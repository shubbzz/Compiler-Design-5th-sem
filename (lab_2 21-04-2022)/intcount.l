%{
#include<stdio.h>
int i=0, f=0 ,pf=0,nf=0,pi=0,ni=0;
%}
%%
" " ;
["+"]?[0-9]+"."[0-9]+ { f++; pf++;}
["+"]?[0-9]+"/"["+"]?[0-9]+ { f++; pf++;}
["+"]?[0-9]+"/-"[0-9]+ { f++;nf++;}
"-"[0-9]+"/"["+"]?[0-9]+ { f++;nf++;}
"-"[0-9]+"/-"[0-9]+ { f++;pf++;}
["+"]?[0-9]+["."]?[0-9]*"/"["+"]?[0-9]+["."]?[0-9]* { f++; pf++;}
["+"]?[0-9]+["."]?[0-9]*"/-"[0-9]+["."]?[0-9]* { f++;nf++;}
"-"[0-9]+["."]?[0-9]*"/"["+"]?[0-9]+["."]?[0-9]* { f++;nf++;}
"-"[0-9]+["."]?[0-9]*"/-"[0-9]+["."]?[0-9]* { f++;pf++;}
"-"[0-9]+"."[0-9]+ { f++;nf++;}
"-"[0-9]+" " {i++;ni++;}
["+"]?[0-9]+" " {i++;pi++;}
["+"]?[0-9]+\n {i++; pi++;return 0;}
"-"[0-9]+\n {i++; ni++;return 0;}
\n {return 0;}
%%
int main(){
printf("Enter string\n");
yylex();
printf("\nNumber of integers: %d\nNumber of fractions: %d\n",i,f);
printf("\nNumber of positive integers: %d\nNumber of positive fractions: %d\n",pi,pf);
printf("\nNumber of negative integers: %d\nNumber of negative fractions: %d\n",ni,nf);
}
int yywrap(){
return 1;}
