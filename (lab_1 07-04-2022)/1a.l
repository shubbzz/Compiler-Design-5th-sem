%{
#include<stdio.h>
int space=0; lines=0, words=0,total=0;
%}

%%
[A-Za-z0-9]+ {words++; total+=yyleng;}
[' '] space ++;
\t space+=4;
\n lines++;
%%
 void main(int argc,char * argv[])//void main()
{
if(argc>1){
yyin= fopen(argv[1],"r");}

yylex();

printf("\n%d lines", lines);
printf("\n%d words",words);
printf("\n spaces:%d", space);
printf("\n%d characters.\n",total);
}
 
int yywrap()
{
return(1);
}
