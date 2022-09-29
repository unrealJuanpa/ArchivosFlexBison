%{
#include <stdio.h>
void yyerror(char *mensaje);
int yylex();
%}


%token DELETE
%token FROM
%token NTABLA
%token WHERE
%token NOMBRE
%token IGUAL
%token OPERADOR
%token VALOR
%token EOL

%%

inicio	: expresion EOL								{ printf("Sintaxis correcta!\n"); return 0; }
		;
expresion: DELETE FROM NOMBRE WHERE condicion		
         | DELETE FROM NTABLA WHERE condicion		
		 ;											

condicion: NOMBRE IGUAL VALOR OPERADOR condicion
		 | NOMBRE IGUAL VALOR 						
		 ;

%%

void yyerror(char *mensaje) {
	fprintf(stderr, "Error: %s\n", mensaje);
}

int main() {
	yyparse();
	return 0;
}

