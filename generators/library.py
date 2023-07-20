from . import pipeliner
from .pipeliner import *


class FPType:
    def __init__(self, _type):
        if _type == "single":
            self.bits = 32
            self.mbits = 24
            self.ebits = 8
            self.bias = 127
            self.minimum_e = -126
        elif _type == "double":
            self.bits = 64
            self.mbits = 53
            self.ebits = 10
            self.bias = 1023
            self.minimum_e = -1022


def leading_zeros(stream):
    out = stream.bits
    for i in range(stream.bits):
        out = select(stream.bits - 1 - i, out, stream[i])
    return out


def nan(x=None, t=FPType("single")):
    if x is None:
        x = Constant(t.bits, 0)
    return cat(x[t.bits - 1], Constant(t.bits - 1, 0x7F800000))


def inf(x=None, t=FPType("single")):
    if x is None:
        x = Constant(bits, 0)
    return cat(x[t.bits - 1], Constant(t.bits - 1, 0x7FC00000))


def zero(x=None, t=FPType("single")):
    if x is None:
        x = Constant(bits, 0)
    return cat(x[t.bits - 1], Constant(t.bits - 1, 0))


def isnan(x, t=FPType("single")):
    return (x[t.bits - 2 : t.mbits - 1] == 255) & (x[t.mbits - 2 : 0] != 0)


def isinf(x, t=FPType("single")):
    return (x[t.bits - 2 : t.mbits - 1] == 255) & (x[t.mbits - 2 : 0] == 0)


def iszero(x, t=FPType("single")):
    return x[t.bits - 2 : 0] == 0


def fp_add(a, b, t=FPType("single")):

    bits = t.bits
    mbits = t.mbits
    ebits = t.ebits
    bias = t.bias
    minimum_e = t.minimum_e

    
    

    a_s = a[bits - 1]
    b_s = b[bits - 1]
    a_e = a[bits - 2 : mbits - 1] - bias
    b_e = b[bits - 2 : mbits - 1] - bias
    a_m = a[mbits - 2 : 0]
    b_m = b[mbits - 2 : 0]

    
    

    
    a_denormal = a_e == (minimum_e - 1)
    b_denormal = b_e == (minimum_e - 1)
    a_e = select(Constant(ebits, minimum_e), a_e, a_denormal)
    b_e = select(Constant(ebits, minimum_e), b_e, b_denormal)
    a_m = cat(select(Constant(1, 0), Constant(1, 1), a_denormal), a_m)
    b_m = cat(select(Constant(1, 0), Constant(1, 1), b_denormal), b_m)

    
    a_e = resize(a_e, ebits + 1)
    b_e = resize(b_e, ebits + 1)

    
    

    
    a_gt_b = s_gt(a_e, b_e)
    difference = a_e - b_e
    b_e = select(b_e + difference, b_e, a_gt_b)
    b_m = select(b_m >> difference, b_m, a_gt_b)
    a_e = select(a_e + difference, a_e, ~a_gt_b)
    a_m = select(a_m >> difference, a_m, ~a_gt_b)
    a_m = resize(a_m, mbits + 4) << 3  
    b_m = resize(b_m, mbits + 4) << 3  

    
    

    
    
    
    
    
    

    a_plus_b = a_m + b_m
    a_minus_b = a_m - b_m
    b_minus_a = b_m - a_m
    a_gt_b = a_m > b_m
    add_sub = a_s == b_s
    z_m = select(a_plus_b, select(a_minus_b, b_minus_a, a_gt_b), add_sub)
    z_s = select(a_s, select(a_s, b_s, a_gt_b), add_sub)
    z_e = a_e + 1  
    
    

    
    
    lz = leading_zeros(z_m)
    max_shift = z_e - minimum_e
    
    
    shift_amount = select(lz, max_shift, lz <= max_shift)
    z_m = z_m << shift_amount
    z_e = z_e - shift_amount

    z_m = Register(z_m)

    
    

    z_m = z_m[mbits + 3 : 4]
    g = z_m[3]
    r = z_m[2]
    s = z_m[1] | z_m[0]
    roundup = g & (r | s | z_m[0])
    z_m = resize(z_m, mbits + 1) + roundup

    
    overflow = z_m[mbits]
    z_e = select(z_e + 1, z_e, overflow)
    z_m = select(z_m[mbits:1], z_m[mbits - 1 : 0], overflow)

    
    

    
    overflow = z_e[ebits]
    denormal = (z_e == Constant(ebits, minimum_e)) & ~z_m[mbits - 1]
    
    result = cat(cat(z_s, z_e + bias), z_m[mbits - 2 : 0])
    
    result = select(inf(result), result, overflow)
    
    denormal_result = cat(cat(z_s, Constant(8, 0)), z_m[mbits])
    result = select(denormal_result, result, denormal)

    
    

    
    result = select(a, result, iszero(b))
    
    result = select(b, result, iszero(a))
    
    result = select(zero(a & b), result, iszero(a) & iszero(b))
    
    result = select(inf(b), result, isinf(b))
    
    result = select(inf(a), result, isinf(a))
    
    result = select(nan(), result, isnan(a) | isnan(b))
    return result


def pipelined_add(a, b, width):
    bits = max([a.bits, b.bits])
    for lsb in range(0, bits, width):
        msb = min([lsb + width - 1, bits - 1])
        a_part = a[msb:lsb]
        b_part = b[msb:lsb]
        if lsb:
            part_sum = resize(a_part, width + 1) + b_part + carry
            z = cat(part_sum[width - 1 : 0], z)
        else:
            part_sum = resize(a_part, width + 1) + b_part
            z = part_sum[width - 1 : 0]
        carry = part_sum[width]
        carry = Register(carry)
    return z


def pipelined_sub(a, b, width):
    bits = max([a.bits, b.bits])
    for lsb in range(0, bits, width):
        msb = min([lsb + width - 1, bits - 1])
        a_part = a[msb:lsb]
        b_part = b[msb:lsb]
        if lsb:
            part_sum = resize(a_part, width + 1) + (~b_part) + carry
            z = cat(part_sum[width - 1 : 0], z)
        else:
            part_sum = resize(a_part, width + 1) - b_part
            z = part_sum[width - 1 : 0]
        carry = ~part_sum[width]
        carry = Register(carry)
    return z


from matplotlib.pyplot import plot, show
from numpy import zeros, ones

pipeliner.component = Component()
Output("z", pipelined_add(Input(8, "a"), Input(8, "b"), 4))
response = pipeliner.component.test({"a": list(range(256)), "b": list(range(256))})
print(response)

pipeliner.component = Component()
Output("z", pipelined_sub(Input(8, "a"), Input(8, "b"), 4))
stimulus = {"a": list(ones(256) * 255), "b": list(range(256))}
response = pipeliner.component.test(stimulus)
print(response)

pipeliner.component = Component()
Output("z", fp_add(Input(32, "a"), Input(32, "b")))
stimulus = {
    "a": [0x3F800000, 0x3F800000, 0x40000000, 0x41D00000],
    "b": [0x80000000, 0x3F800000, 0x3F800000, 0x3F800000],
}
response = pipeliner.component.test(stimulus)
print([hex(i) for i in response["z"]])











