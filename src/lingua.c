#include <stdio.h>

#include "parser.h"

yyerror(char *s)
{
  fprintf(stderr, "error: %s\n", s);
}

int main(int argc, char *argv[])
{
  int i;
  for(i = 1; i < argc; i++)
    {
      FILE *f = fopen(argv[i], "r");
      if(!f) {
	perror(argv[i]);
	return (1);
      }
      yyrestart(f);
      yylex();
      fclose(f);
    }
  //yyparse();
  return 0;
}
