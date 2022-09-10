# !/bin/bash
bison -d archivo.y
flex archivo.l
gcc lex.yy.c archivo.tab.c -lfl -o archivo
