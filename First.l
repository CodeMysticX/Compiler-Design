%{
  #include<stdio.h>
  #include<string.h>
  int a=0,b=0,c=0,d=0;
%}

%%
\n {a++;}
[" "] {b++;}
\t {c++;}
. {d++;}
%%

int yywrap(){return 1;}

int main(){
   printf("Enter the Input: ");
   yylex();
   printf("No. of lines %d\n",a);
   printf("No. of spaces %d\n",b);
   printf("No. of tabs %d\n",c);
   printf("No. of extra characters %d\n",d);

   return 0;
}
