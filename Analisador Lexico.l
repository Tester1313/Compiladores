%{
#include <stdio.h>
#include <stdlib.h>
%}


ID      [a-zA-Z][a-zA-Z0-9]*
DIGITO  [0-9]*
OPERADORES   [+,*,/,=,<,;,(,),{,}]
RESERVADA [if]
ESPACO [" "]
%option noyywrap

%%
{RESERVADA}* {printf("Palavra reservada: %s \n",yytext);}
{ID}*      {printf("ID: %s \n",yytext);}
{DIGITO}*  {printf("Inteiro: %s \n",yytext);} 
{OPERADORES}*   {printf("Operadores e delimitadores: %s \n",yytext);}

{ESPACO}* {printf("Espaco digitado %s \n",yytext);}
%%

int main(void){
yylex();
return 0;
system("pause");
}