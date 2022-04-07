/*
program to count vowela and consonents
/*

%{
	#include<stdio.h>
	int c=0,v=0,n=0;
%}
%%
[aeiouAEIOU] v++;
[a-zA-Z] c++;
\n return 0;
. n++;
%%
void main(){
	printf("Enter the string:");
	yylex();
	printf("vovels: %d\n",v);
	printf("consonentss: %d\n",c);
	printf("others: %d\n",n);
}
