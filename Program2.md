# Identifier Validator

# Description

This program validates identifiers entered by the user. An identifier is a sequence of characters consisting of letters (both uppercase and lowercase) and digits, but must start with a letter. The program counts the number of valid identifiers and invalid identifiers entered by the user.

# Code

```lex
%{
#include<stdio.h>
#include<stdbool.h>
int a = 0;
%}

%%
^{letter1}({letter})* {a++; printf("\nValid identifier!");}
. {printf("\nInvalid identifier!");}
%%

int yywrap() {
    return 1;
}

int main() {
    printf("Enter the Input: ");
    yylex();
    printf("\nNo. of identifiers: %d", a);
    return 0;
}
