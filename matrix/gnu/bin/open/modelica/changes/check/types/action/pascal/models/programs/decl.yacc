/*
the following code is the same as the original
*/
%{
    // Define the tokens
    token NUMBER {
        // Match a sequence of digits
        [0-9]+
    }

    token PLUS {
        '+'
    }

    token MINUS {
        '-'
    }
    
    token MULT {
        '*'
    }

    token DIV {
        '/'
    }
    
    token ASSIGN {
        '='
    }

    token LPAREN {
        '('
    }
    
    token RPAREN {
        ')'
    }
    
    token SEMICOLON {
        ';'
        // Return a semicolon as a token
        return SEMICOLON;
    }
    
    token NEWLINE {
        '\n'
    }

    // Define the rules for the lexer
    %start expr;
    expr: term ((PLUS | MINUS) term)* ;
    term: factor ((MULT | DIV) factor)* ;
    factor: NUMBER | LPAREN expr RPAREN;

    // Define the precedence of the operators
    %left MINUS
    %left MULT DIV
    %right PLUS

    // Define the precedence of the operators
    %prec LOWEST ASSIGN;
    // Define the grammar
    %%
    // Define the actions for the rules
    expr: term {
        $$ = $1;
    }

    term: factor {
        $$ = $1;
    }

    factor: NUMBER {
        $$ = new_number_value($1);
    }

    factor: LPAREN expr RPAREN {
        $$ = $2;
    }

    // Define the actions for the operators
    term: term PLUS factor {
        $$ = new_binary_op_value($1, "+", $3);
    }

    term: term MINUS factor {
        $$ = new_binary_op_value($1, "-", $3);
    }

    term: factor MULT factor {
        $$ = new_binary_op_value($1, "*", $3);
    }

    term: factor DIV factor {
        $$ = new_binary_op_value($1, "/", $3);
    }
    // Define the actions for the assignment operator
    expr: term ASSIGN factor {
        $$ = new_assignment_value($1, $3);
    }

    // Define the actions for the semicolon
    expr: NEWLINE {
        // Do nothing, just move to the next line
    }

 

%}
