/*
the following code is the same as the original safes
*/
%{
    // Define the tokens
    token WORD { [a-zA-Z_] [a-zA-Z0-9_]* }
    token NUMBER { [0-9]+ }
    token SEMICOLON { ';' }
    token LPAR { '(' }
    token RPAR { ')' }
    token PLUS { '+' }
    token MINUS { '-' }
    token MULT { '*' }
    token DIV { '/' }
    token ASSIGN { '=' }
    token IF { 'if' }
    token ELSE { 'else' }
    token WHILE { 'while' }
    token INT { 'int' }
    token RETURN { 'return' }
    token ID { WORD }

    // Define the precedence of operators
    precedence ASSIGN 10;
    precedence PLUS MINUS 20;
    precedence MULT DIV 30;
    precedence IF ELSE 40;
    precedence WHILE 50;
    precedence ASSIGN 40;

    // Define the grammar rules
    grammar;
    %start program;

    program: statements ;

    statements: statement statements | statement ;
    statement: declaration | expression_statement | if_statement | while_statement | return_statement ;
    declaration: INT ID SEMICOLON ;
    expression_statement: ID ASSIGN expression SEMICOLON ;
    if_statement: IF LPAR expression RPAR statement (ELSE statement)? ;
    while_statement: WHILE LPAR expression RPAR statement ;
    return_statement: RETURN expression SEMICOLON ;

    expression: term (PLUS term | MINUS term)* ;
    term: factor (MULT factor | DIV factor)* ;
    factor: NUMBER | ID | LPAR expression RPAR ;


    // Define the lexer rules
    %lex
    {
        // Define the regular expressions for tokens
        \s+         ; // whitespace
        [a-zA-Z_] [a-zA-Z0-9_]*  { return ID; }
        [0-9]+       { return NUMBER; }
        [;{}]        { return $1; }
        \(\)        { return LPAR; }
        \)          { return RPAR; }
        \+          { return PLUS; }
        -          { return MINUS; }
        \*          { return MULT; }
        /          { return DIV; }
        =          { return ASSIGN; }
        if          { return IF; }
        else         { return ELSE; }
        while         { return WHILE; }
        int          { return INT; }
        return        { return RETURN; }
    }
    // Define the parser rules
    %parse-table

    // Define the action code for each rule
    program: statements -> { $1; }
    statements: statement statements -> { $1; $2; } | statement -> { $1;
    declaration: INT ID SEMICOLON -> { std::cout << "Declaration: int "
    << $2 << ";\n"; }
    expression_statement: ID ASSIGN expression SEMICOLON -> { std::cout << "
    Expression Statement: " << $1 << " = " << $3 << ";\n"; }
    if_statement: IF LPAR expression RPAR statement (ELSE statement)? -> {
        std::cout << "If Statement:\n";
        $3;
        if ($5) $5;
    }
    while_statement: WHILE LPAR expression RPAR statement -> { std::cout << "
    While Statement:\n"; $3; $4; }
    return_statement: RETURN expression SEMICOLON -> { std::cout << "Return Statement
    with value: " << $2 << ";\n"; }
    expression: term (PLUS term | MINUS term)* -> {
        int result = $1;
        for (int i = $2.begin(); i!= $2.end(); ++i) {
            if (*i == "+") {
                result += $3;
            } else {
                result -= $3;
            }
        }
        return result;
    }
    term: factor (MULT factor | DIV factor)* -> {
        int result = $1;
        for (int i = $2.begin(); i!= $2.end(); ++i)
        {
            if (*i == "*") {
                result *= $3;
            } else {
                result /= $3;
            }
            return result;
        }
        factor: NUMBER | ID | LPAR expression RPAR -> { $1; }
    }
    // Define the lexer rules
    %lex
    {
        \s+         ; // whitespace
        [a-zA-Z_] [a-zA-Z0-9_]*  {
            return ID;
        }
        [0-9]+       {
            return NUMBER;
        }
        [;{}]        {
            return $1;
        }
        \(\)        {
            return LPAR;
        }
        \)          {
            return RPAR;
        }
        \+          {
            return PLUS;
        }
        -          {
            return MINUS;
        }
        \*          {
            return MULT;
        }
        /          {
            return DIV;
            }
        }
        =          {
            return ASSIGN;
        }
        if          {
            return IF;
        }
        else         {
            return ELSE;
        }
        while         {
            return WHILE;
        }
        int          {
            return INT;
        }
        return        {
            return RETURN;
        }
        // Define the parser rules
        %parse-table

        // Define the action code for each rule
        program: statements -> { $1; }
        statements: statement statements -> { $1; $2; } | statement -> { $1;
        declaration: INT ID SEMICOLON -> { std::cout << "Declaration: int "
        << $2 << ";\n"; }
        expression_statement: ID ASSIGN expression SEMICOLON -> { std::cout << "
        Expression Statement: " << $1 << " = " << $3 << ";\n"; }
        if_statement: IF LPAR expression RPAR statement (ELSE statement)? -> {
            std::cout << "If Statement:\n";
            $3;
            if ($5) $5;
        }
        while_statement: WHILE LPAR expression RPAR statement -> { std::cout << "
        While Statement:\n"; $3; $4; }
        return_statement: RETURN expression SEMICOLON -> { std::cout << "Return Statement
        with value: " << $2 << ";\n"; }
    }
    
    // Define the lexer rules
    %lex
    {
        \s+         ; // whitespace
        [a-zA-Z_] [a-zA-Z0-9_]*  {
            return ID;
        }
        [0-9]+       {
            return NUMBER;
        }
        [;{}]        {
            return $1;
        }
        \(\)        {
            return LPAR;
        }
        \)          {
            return RPAR;
        }
        \+          {
            return PLUS;
        }
        -          {
            return MINUS;
        }
        \*          {
            return MULT;
        }
        /          {
            return DIV;
            }
        }
        =          {
            return ASSIGN;
        }
        if          {
            return IF;
        }
        else         {
            return ELSE;
        }
        while         {
            return WHILE;
        }
        int          {
            return INT;
        }
        return        {
            return RETURN;
        }
        // Define the parser rules
        %parse-table

        // Define the action code for each rule
        program: statements -> { $1; }
        statements: statement statements -> { $1; $2; } | statement -> { $1;
        declaration: INT ID SEMICOLON -> { std::cout << "Declaration: int "
        << $2 << ";\n"; }
        expression_statement: ID ASSIGN expression SEMICOLON -> { std::cout << "
        Expression Statement: " << $1 << " = " << $3 << ";\n"; }
        if_statement: IF LPAR expression RPAR statement (ELSE statement)? -> {
            std::cout << "If Statement:\n";
            $3;
            if ($5) $5;
        }
        while_statement: WHILE LPAR expression RPAR statement -> { std::cout << "
        While Statement:\n"; $3; $4; }
        return_statement: RETURN expression SEMICOLON -> { std::cout << "Return Statement
        with value: " << $2 << ";\n"; }
    }
}

"x" y z + T <init-declare>(safe_declare[0]);

%}
