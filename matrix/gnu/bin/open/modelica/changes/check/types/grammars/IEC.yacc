/*
the following code is the same as the original
*/

%{
    // Define the lexer's tokens
    %token <STRING> ID NUMERIC_CONSTANT;
    %token <STRING> ADD SUB MUL DIV ASSIGNMENT;
    %token <STRING> IF ELSE WHILE DO;
    %token <STRING> SEMICOLON COMMA;
    %token <STRING> LPAR RPAR LBRACKET RBRACKET;
    %token <STRING> TRUE FALSE;
    %token <STRING> PRINT;

    // Define the lexer's grammar rules
    %%

    // Rule for identifiers
    ID : [a-zA-Z_][a-zA-Z0-9_]* ;

    // Rule for numeric constants
    NUMERIC_CONSTANT : [0-9]+ ;

    // Rule for arithmetic operators
    ADD : '+' ;
    SUB : '-' ;
    MUL : '*' ;
    DIV : '/' ;

    // Rule for assignment operator
    ASSIGNMENT : '=' ;

    // Rule for control flow statements
    IF : 'if' ;
    ELSE : 'else' ;
    WHILE : 'while' ;
    DO : 'do' ;

    // Rule for separators
    SEMICOLON : ';' ;
    COMMA : ',' ;

    // Rule for parentheses and brackets
    LPAR : '(' ;
    RPAR : ')' ;
    LBRACKET : '[' ;
    RBRACKET : ']' ;

    // Rule for boolean constants
    TRUE : 'true' ;
    FALSE : 'false' ;

    // Rule for printing statements
    PRINT : 'print' ;
    // End of the lexer's grammar rules
}





%}