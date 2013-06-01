%{

%}

%option noyywrap

DIGIT    [0-9]+
CLASS    (?i:class)
INHERITS (?i:inherits)
LET      (?i:let)
IN       (?i:in)
ASSIGN   <-
NOTATION \:|,|\;|\{|\}
BLANK    \f|\r|\ |\t|\v
NEWLINE  \n

TYPE_IDENTFIER    ([A-Z][a-zA-Z0-9_]*)|SELF_TYPE
OBJ_IDENTFIER    ([a-z][a-zA-Z0-9_]*)|self


%%

{DIGIT}   printf("%s", yytext);
{CLASS}   printf("%s", yytext);
{INHERITS} printf("%s", yytext);
{LET} printf("%s", yytext);
{IN} printf("%s", yytext);
{ASSIGN} printf("%s", yytext);
{NOTATION} printf("%s", yytext);
{BLANK} printf("%s", yytext);
{NEWLINE} printf("%s", yytext);

{TYPE_IDENTFIER} printf("%s", yytext);
{OBJ_IDENTFIER} printf("%s", yytext);
.

%%

int main()
{
   yyin = fopen("text", "r");
   yylex();
}
