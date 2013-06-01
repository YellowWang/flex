%{
   int num_lines = 0;
%}

%option noyywrap

%%

\n      ++num_lines;
.

%%

int main()
{
   yyin = fopen("text", "r");
   yylex();
   printf( "lines = %d\n", num_lines);
}