# Lex Code 
Description:-

This Lex code tokenizes input into integer and floating-point numbers. Below is a description of each part of the code:


```lex
%{
#include<stdio.h>
%}
%%
-?[0-9_]* {printf("Integer number.");}
-?[0-9_]*(.)[0-9_]* {printf("Floating point number.");}
%%

int yywrap(){return -1;}

int main(){
    printf("Input: ");
    yylex();
}
