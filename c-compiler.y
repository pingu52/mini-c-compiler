%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "AST.h"
#include "c-compiler.h"

struct Program *head;

FILE *fp1; 
FILE *fp2;

void yyerror(char* text) {
    fprintf(stderr, "%s\n", text);
}
%}


%union {
	int intnum;
	float floatnum;
	char *id;
}


%token <intnum>INTNUM
%token <floatnum>FLOATNUM
%token <id>ID
%token INT FLOAT MAIN PRIVATE PUBLIC
%token IF ELSE FOR WHILE DO RETURN
%token DOUBLE_QUO SINGLE_QUO AND OR PLUS MINUS MULT DIV GT LT LE GE EQ NE

%right '='
%left EQ NE
%left LE GE GT LT
%left PLUS MINUS
%left MULT DIV
%right UNARY
%left '(' ')'
