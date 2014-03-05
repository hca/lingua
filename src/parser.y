%{
#include <stdio.h>
%}

%token ASSIGN
%token IDENTIFIER
%token NUMBER
%token ADD SUB MUL DIV
%token EOL

%%

assignation: IDENTIFIER ASSIGN expr;

expr: factor
| expr ADD factor { }
| expr SUB factor { }
;

factor: term
| factor MUL term { }
| factor DIV term { }
;

term: NUMBER {};

%%
