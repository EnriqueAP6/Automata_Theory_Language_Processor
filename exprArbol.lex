/* --------------------------Seccion codigo-usuario ------------------------ */
import java_cup.runtime.Symbol;

%%
/* ----------------- Seccion de opciones y declaraciones  ----------------- */

%standalone
%cup

STR_QUOTES = \"[a-zA-Z0-9_ ]+\"
IDENTIFIER = [a-zA-Z0-9_]+
COMMENT_1 = \/\/.*(\r\n)? 
COMMENT_2 = #.*(\r|\n)?
//COMMENT_3 =  \/\*(.*|\r\n)*\*\/
COMMENT_3 =  \/\**([^\/\*]|[^*\*\/])*\**\/

%%
/* ------------------------ Seccion de reglas lexicas ---------------------- */

arbol { return new Symbol(sym.ARBOL, yytext()); }
node { return new Symbol(sym.NODE, yytext()); }
shape { return new Symbol(sym.SHAPE, yytext()); }
label { return new Symbol(sym.LABEL, yytext()); }
color { return new Symbol(sym.COLOR, yytext()); }
fontcolor { return new Symbol(sym.FONTCOLOR, yytext()); }
style { return new Symbol(sym.STYLE, yytext()); }
edge { return new Symbol(sym.EDGE, yytext()); }
dir { return new Symbol(sym.DIR, yytext()); }
hijos { return new Symbol(sym.HIJOS, yytext()); }
; { return new Symbol(sym.SEMI, yytext()); }
\[ { return new Symbol(sym.LSQB, yytext()); }
\] { return new Symbol(sym.RSQB, yytext()); }
= { return new Symbol(sym.EQUAL, yytext()); }
, { return new Symbol(sym.COMMA, yytext()); }
\{ { return new Symbol(sym.LBRACE, yytext()); }
\} { return new Symbol(sym.RBRACE, yytext()); }
{COMMENT_1} { return new Symbol(sym.COMMENT_1, yytext()); }
{COMMENT_2} { return new Symbol(sym.COMMENT_2, yytext()); }
{COMMENT_3} { return new Symbol(sym.COMMENT_3, yytext()); }
{STR_QUOTES} { return new Symbol(sym.STR_QUOTES, yytext()); }
{IDENTIFIER} { return new Symbol(sym.IDENTIFIER, yytext()); }
. {}
