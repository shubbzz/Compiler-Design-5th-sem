%{
#include<stdio.h>
#include<string.h>

char replace_with[10] = "Best";
char replace [10] ="qq";


%}
%%
[a-zA-Z]+ { if(strcmp(yytext, replace)==0){fprintf(yyout, "%s", replace_with);}
				else{
					fprintf(yyout, "%s", yytext);}}
.		 {fprintf(yyout, "%s", yytext);}
%%


int yywrap()
{
	return 1;
}

int main()
{
		extern FILE *yyin, *yyout;
		
	yyin=fopen("sample.txt", "r+");
	system("rm sample.txt");
	yyout=fopen("sample.txt", "w+");
	
		yylex();
}

