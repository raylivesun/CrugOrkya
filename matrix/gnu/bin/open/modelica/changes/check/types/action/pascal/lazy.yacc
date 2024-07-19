/*
the location of the source file that contains the source
*/
%{
    location = src;
    public;

    token_class = source_token;

    /*
    define the regular expressions for the different types of tokens
    */
    regex {
        /*
        comments start with '//' and continue until the end of the line
        */
        COMMENT1: '//' ~.*?\n;

        /*
        identifiers consist of alphanumeric characters and underscores,
        followed by optional digits
        */
        IDENTIFIER: [a-zA-Z_][a-zA-Z0-9_]*;

        /*
        numbers consist of digits, optionally followed by a period and more digits
        */
        NUMBER: [0-9]+(\.[0-9]+)?;

        /*
        keywords are predefined identifiers that have a specific meaning in the language
        */
        KEYWORD: (if|else|while|for|return|int|float|void|main)
    }
    /*
    define the precedence and associativity of the operators
    */
    precedence = {
        '*' > '/' > '%' > '+' > '-' > '==' > '!=' > '<' > '>' > '<=' > '>=' > '&&' > '||';
        '*' >> '/' >> '%';
        '+' >> '-';
        '==' >> '!=';
    }
    /*
    define the action to be taken when a token is matched
    */
    action = {
        TYPE = "source_token";
        TEXT = "source_token";
        LEXEMES = $1;
        LINE = $2;
        COLUMN = $3;
    }
    /*
    define the start symbol of the grammar
    */
    start = "program";

    /*
    define the grammar rules
    */
    rule "program" = "function_definitions";


    rule "function_definitions" = "function_definition" | "function_definition" "function
    definitions";
    rule "function_definition" = "type" "IDENTIFIER" "(" parameter_list ")" "{"
    statement_list
    "}" ;
    rule "type" = "int" | "float" | "void";
    rule "parameter_list" = "parameter" | "parameter" "," parameter_list;
    rule "parameter" = "type" "IDENTIFIER";
    rule "statement_list" = "statement" | "statement" ";
    statement = "return" expression ";" | "if" "(" expression ")" "{" statement_list "
    "}" | "while" "(" expression ")" "{" statement_list "}" | "for"
    "(" expression ")" "{" statement_list "}" | expression ";";
    rule "expression" = term (op term)*;
    rule "op" = "+" | "-" | "*" | "/" | "%" | "==" |
    "!=" | "<" | ">" | "<=" | ">=" | "&&" | "
    ||";
    rule "term" = factor (op factor)*;
    rule "factor" = "(" expression ")" | "IDENTIFIER" | "NUMBER" | "{" expression
    "}";
}


%}