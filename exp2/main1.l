%{
	int no_of_lines = 0;
	int no_of_chars = 0;
%}

%%
\n ++no_of_lines;
. ++no_of_chars;
end return 0;
%%

int yywrap(){}
int main(int argc, char **argv)
{
	yylex();
	printf(&quot;number of lines = %d, number of chars = %d\n&quot;,
	no_of_lines, no_of_chars );
	return 0;
}