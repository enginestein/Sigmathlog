#include "stdio.h"

void main(){


    FILE *infa;
    FILE *infb;
    FILE *outf;

    int i;
    unsigned int a;
    unsigned int b;

    infa = fopen("stim/ne_a", "r");
    infb = fopen("stim/ne_b", "r");
    outf = fopen("stim/ne_z_expected", "w");

    while(1){
        if(fscanf(infa, "%u", &a) == EOF) break;
        if(fscanf(infb, "%u", &b) == EOF) break;
        i = *(float*)&a != *(float*)&b;
        fprintf(outf, "%u\n", i);
    }

    fclose(infa);
    fclose(infb);
    fclose(outf);


}
