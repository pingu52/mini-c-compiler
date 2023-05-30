%option noyywrap

%{
#include "compiler.h"
#include "compiler.tab.h"
%}

%%
"..." { return DOTS; }

"+"|
"-"|
"*"|
"/"|
"="|
"|"|
","|
";"|
":"|
"."|
"["|
"]"|
"{"|
"}"|
"("|
")" { return yytext(0); }

">"
"<"
"<>"
"=="
">="
"<="

"int" { yylval.typeC = 'a'; return STD_TYPE; }
"real" { yylval.typeC = 'b'; return STD_TYPE; }

