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
%token OPERADOR
%token VALOR
%token EOL

%%

inicio	: expresion EOL								{ printf("Sintaxis correcta!\n"); return 0; }
		;
expresion: DELETE FROM NTABLA WHERE condicion
		 ;											

condicion: NOMBRE VALOR OPERADOR condicion
		 | NOMBRE VALOR
		 ;

%%

void yyerror(char *mensaje) {
	fprintf(stderr, "Error: %s\n", mensaje);
}

int main() {
	yyparse();
	return 0;
}

