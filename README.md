# Sigmathlog

The revolutionary project to perform mathematics in Verilog programming language. Sigmathlog has basic mathematical functions that are **base** of the mathematical operations in computer programming. 

# Docs

Here is a list of functionalities in Sigmathlog:

- `Dividing`
- `Multiplication`
- `Adding`
- `Substracting`
- `Square Root`
- `Float` to `Integer` conversion
- `Integer` to `Float` conversion
- `Floor` function
- `Ceil` function
- `Truncate` function
- `Nearest` function
- Support for `denormal` numbers
- `Round-to-nearest` function

### Usage

go to `components` folder and include the function file you want to use, for instance you can indlude `abs.v` or you can include files with `_tb` in their name as well like `abs_tb.v` to use `abs` function in your code.

#### abs

### Testing

Before running the framework, you should run the tests:

```console
cd components
```

For single precision:

```console
py test_cores.py
```

For double precision:

```console
py test_double_cores.py
```

If there is an error, it must be because required module `pyverilog` is not installed:

```console
py -m pip install pyverilog
```

