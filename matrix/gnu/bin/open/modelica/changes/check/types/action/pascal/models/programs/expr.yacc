/*
The above copyright notice and this permission notice
*/
%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    #include <ctype.h>
    #include "y.tab.h"
    #define YY_USER_ACTION action_code()
    void action_code() {
        char *token = yytext;
        int length = strlen(token);
        char *trimmed_token = malloc((length + 1) * sizeof(char));
        strncpy(trimmed_token, token, length);
        trimmed_token[length] = '\0';
        printf("Token: %s\n", trimmed_token);

        if (isalpha(trimmed_token[0])) {
            printf("Type: Identifier\n");
            if (strchr(trimmed_token, '_')) {
                printf("Scope: Global\n");
                printf("Kind: Variable\n");
            }
            else {
                printf("Scope: Local\n");
                printf("Kind: Variable\n");
            }
            else {
                printf("Scope: Global\n");
                printf("Kind: Function\n");
            }
            else {
                printf("Scope: Local\n");
                printf("Kind: Function\n");
            }
            else {
                printf("Scope: Global\n");
                printf("Kind: Type\n");
            }
            else {
                printf("Scope: Local\n");
                printf("Kind: Type\n");
            }
            else {
                printf("Scope: Global\n");
                printf("Kind: Constant\n");
            }
            else {
                printf("Scope: Local\n");
            }
        }
        else if (isdigit(trimmed_token[0])) {
            printf("Type: Number\n");
            if (strchr(trimmed_token, '.')) {
                printf("Kind: Floating-Point Number\n");
            }
            else {
                printf("Kind: Integer Number\n");
            }
        }
        else {
            printf("Type: Operator\n");
            printf("Kind: %s\n", token);
        }
        free(trimmed_token);
    }

    /*
    The following are required by the YACC parser
    */
    int yylex();
    extern FILE *yyin;
    int yyleng;
    extern char *yytext;
    int yylineno;
        
%}