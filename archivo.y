%{
#include <stdio.h>
void yyerror(char *mensaje);
int yylex();
%}


%token NUMERAL
%token DINCLUDE
%token DESPACIO
%token DMI
%token DMF
%token NOMBRE
%token COMILLA
%token EOL

%%

inicio	: expresion EOL			{ printf("Sintaxis correcta\n"); }
	;
expresion: NUMERAL DINCLUDE DESPACIO DMI NOMBRE DMF EOL		{ printf("Caso de include con signos de mayor menor con espacio\n"); }
	| NUMERAL DINCLUDE DMI NOMBRE DMF EOL			{ printf("Caso de include con signo mayor menor sin espacio\n"); }
	| NUMERAL DINCLUDE DESPACIO COMILLA NOMBRE COMILLA EOL	{ printf("Caso de include comillas con espacio\n"); }
	| NUMERAL DINCLUDE COMILLA NOMBRE COMILLA EOL		{ printf("Caso de include comillas sin espacio\n"); }
	| expresion EOL expresion
	| expresion EOL
	| expresion EOL EOL
	;
%%

void yyerror(char *mensaje) {
	fprintf(stderr, "Error: %s\n", mensaje);
}

int main() {
	yyparse();
	return 0;
}

