bison -d delete.y
flex delete.l
gcc lex.yy.c delete.tab.c -L"C:\MinGW\msys\1.0\lib" -lfl -o delete.exe
delete.exe
