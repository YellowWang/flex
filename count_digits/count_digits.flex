%{
   int num_digits=0, max_digit=0;
%}

%option noyywrap

DIGIT   [0-9]+

%%

{DIGIT}   {
   int n = atoi(yytext);
   if (max_digit < n)
      max_digit = n;
   num_digits++;
   }
.

%%

int main()
{
   yyin = fopen("text", "r");
   yylex();
   printf( "num_digits = %d, max_digit = %d\n", num_digits, max_digit);
}