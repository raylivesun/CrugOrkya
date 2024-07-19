/*
the following code is the same as the original
*/

%{
    // Define the lexer's tokens
    token ID [a-zA-Z]+;
    token NUM [0-9]+;
    token WS [ \t\r\n]+;
    token SEMICOLON ;
    token ASSIGN ;
    token PLUS ;
    token MINUS ;
    token MULTI ;
    token DIV ;
    token LPAREN ;

    // Define the lexer's rules
    // The lexer ignores whitespace and comments
    rule ^[ \t\r\n]*(?:\/\/.*)?$ { }

    // Match and return identifiers
    rule ID { ID }

    // Match and return numbers
    rule NUM { NUM }

    // Match and return semicolons
    rule SEMICOLON { ; }

    // Match and return assignment operators
    rule ASSIGN { = }

    // Match and return addition operators
    rule PLUS { + }

    // Match and return subtraction operators
    rule MINUS { - }

    // Match and return multiplication operators
    rule MULTI { * }

    // Match and return division operators
    rule DIV { / }

    // Match and return left parenthesis
    rule LPAREN { ( }

    // Define the lexer's start rule
    // This is the entry point for the lexer
    %start program;
    // Define the lexer's grammar rules
    rule program : statement* {
        // Your program parsing logic goes here
    }

    rule statement : ID ASSIGN expression SEMICOLON {
        // Your code to handle variable assignments goes here
    }

    rule expression : term ((PLUS | MINUS) term)* {
        // Your code to handle arithmetic expressions goes here
    }

    rule term : factor ((MULTI | DIV) factor)* {
        // Your code to handle multiplication and division expressions goes here
    }

    rule factor : NUM | LPAREN expression RPAREN {
        // Your code to handle parentheses and numbers goes here
    }
    // End of the lexer's rules

%}