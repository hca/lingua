%{
#include "parser.h"
%}

%option noyywrap

%%
"+"                     { return ADD; }
"-"                     { return SUB; }
"*"                     { return MUL; }
"/"                     { return DIV; }
[0-9]+                  { yylval = atoi(yytext); return NUMBER; }
[_a-zA-Z]+[_a-zA-Z]*    { return IDENTIFIER; }
=                       { return ASSIGN; }
\n                      { return EOL; }
[ \t]                   { /* ignore whitespace */ }
.                       { printf("Mystery character %c\n", *yytext); }
%%