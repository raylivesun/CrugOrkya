/*
the following code is the same as the original
*/
%{
    #include <stdio.h>
    #include <string.h>
    #include <ctype.h>
    #include "y.tab.h"

    int yylex() {
        int c;
        char token[256];
        int token_index = 0;
        
        while ((c = getchar())!= EOF) {
            if (isalpha(c)) {
                token[token_index++] = c;
                continue;
            }

            if (c == '=') {
                token[token_index++] = c;
                return ASSIGN;
            }

            if (c == '+') {
                token[token_index++] = c;
                return PLUS;
            }

            if (c == '-') {
                token[token_index++] = c;
                return MINUS;
            }

            if (c == '*') {
                token[token_index++] = c;
                return MULTIPLY;
            }

            if (c == '/') {
                token[token_index++] = c;
                return DIVIDE;
            }

            if (c == '(') {
                return LPAREN;
            }

            if (c == ')') {
                return RPAREN;
            }

            if (c == '\n') {
                token[token_index] = '\0';
                return NUMBER;
            }

            ungetc(c, stdin);
            return ERROR;
        }

        token[token_index] = '\0';
        return NUMBER;
    }

    %%
    NUMBER [0-9]+ {
        yylval.number = atoi(yytext);
        return NUMBER;
    }
    %{
     #include <stdio.h>
     int yylex (void);
     void yyerror (char const *);
    %}
    %define api.value.type {char const *}
    %token TYPENAME ID
    %right "="
    %left "+"
    %glr-parser
    %%
%}