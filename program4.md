# Lex Code 

This Lex code tokenizes input into various categories such as operators, separators, keywords, identifiers, floats, and integers. 

# Code:

```lex
%{
#include <stdio.h>
int n = 0;
%}

%%
"+"|"-"|"*"|"/"|"%"|"=="|"!="|"<"|">"|"<=>" {n++;printf("\t Operator: %s\n", yytext);}
";"|","|"."|"("|")"|"["|"]"|"{"|"}" {n++;printf("\t Separator: %s\n", yytext);}
"int"|"float"|"while"|"if"|"else" {n++;printf("\t Keyword: %s\n", yytext);}
^[a-zA-Z_][a-zA-Z0-9_]* {n++;printf("\t Identifier: %s\n", yytext);}
-?[0-9_]+\.[0-9_]* {n++;printf("\t Float: %s\n", yytext);}
-?[0-9_]+ {n++;printf("\t Integer: %s\n", yytext);}
[ \t\n] { }
. ;
%%

int yywrap() {
    return 1;
}

int main() {
    yyin = fopen("input.c", "r");
    if (!yyin) {
        perror("input.c");
        return 1;
    }

    yylex();

    fclose(yyin);
    printf("\nTotal number of tokens = %d\n", n);
    return 0;
}
