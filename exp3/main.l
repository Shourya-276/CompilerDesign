%{
#include <stdio.h>;
%}

DIGIT [0-9]
LETTER [a-zA-Z_]
ID {LETTER}({LETTER}|{DIGIT})*

%%
"integer" { printf("Keyword: %s\n", yytext); }
"read" { printf("Keyword: %s\n", yytext); }
"if"|"then"|"else"|"while"|"for"|"to"|"step"|"display" { printf("Keyword: %s\n", yytext); }
{ID} { printf("Identifier: %s\n", yytext); }
{DIGIT}+ { printf("Integer: %s\n", yytext); }
[;=,(){}] { printf("%s\n", yytext); }
"==" { printf("Equal\n"); }
"&gt;=" { printf("Greater than or equal\n"); }
"&lt;=" { printf("Less than or equal\n"); }
[&gt;&lt;] { printf("Greater than or Less than\n"); }
%%

int yywrap(){}
int main() {
	FILE *fp;
	fp = fopen("file2.star.txt", "r");
	if (!fp) {
		fprintf(stderr, "Error opening file.\n");
		return 1;
	}
	yyin = fp;
	yylex();
	fclose(fp);
	return 0;
}