%{
%}

%option noyywrap

%%
\n   printf("\n");
%%

int main()
{
   yyin = fopen("text", "r");
   yylex();
}