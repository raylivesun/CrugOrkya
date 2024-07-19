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
    %set<int>::iterator;

    %%

    // Define the lexer's rules
    "+"        { return PLUS; }
    "-"        { return MINUS; }
    "*"        { return MULTIPLE; }
    "/"        { return DIVIDE; }
    ";"        { return SEMICOLON; }
    ","        { return COMMA; }

    // Define the lexer's regular expressions
    type subrange = lo .. hi;
    type enum = (a, b, c);
    type variable = [a-z]+;
    type integer = [0-9]+;

    // Define the lexer's action rules
    WORD       { return WORD(yytext); }
    NUMBER     { return NUMBER(std::stoi(yytext)); }
    variable   { return variable(yytext); }


    // Define the lexer's error handling
    //...
}


%}