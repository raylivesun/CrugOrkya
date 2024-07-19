/*
the following code is the same as the original
*/
%{
    // Define the scanner's tokens
    %token <STRING> WORD;
    %token <NUMBER> NUMBER;
    %token <OPERATOR> PLUS MINUS MULTIPLE DIVIDE;
    %token <SEPARATOR> SEMICOLON COMMA;

    // Define the scanner's rules
    %strem <NUMBER> NUMBER;
    %strem <OPERATOR> PLUS MINUS MULTIPLE DIVIDE;
    %strem <SEPARATOR> SEMICOLON COMMA;

    %%

    // Define the grammar rules
    start : statement* { printf("Parsed successfully.\n"); }
    statement : expression SEMICOLON { printf("Parsed statement: %s\n", $

    1 : NUMBER { $$ = $1; }
    expression : expression PLUS term { $$ = $1 + $3; }
    expression : expression MINUS term { $$ = $1 - $3; }
    expression : term { $$ = $1; }
    term : term MULTIPLE factor { $$ = $1 * $3; }
    term : term DIVIDE factor { $$ = $1 / $3; }
    factor : NUMBER { $$ = $1; }
    factor : WORD { $$ = $1; }
}


int main() {
    // Create a scanner object
    yyscan_t scanner;
    yylex_init(&scanner);

    // Define the input string
    const char* input = "1 + 2 * 3; 4 - 5; hello world; 6 / 2;";

    // Scan the input string
    yylex(scanner, input);

    // Clean up the scanner
    yylex_destroy(scanner);
    return 0;
}


%}