/*
The above copyright notice and this permission notice shall be
*/

%{
    // # Define the C++ preprocessor directives
    PREPROCESSOR_DIRECTIVES
    : '#include <iostream>'
    | '#define FOO 42'
    | '#define BAR(x) x * 2'

    // # Define the C++ regular expressions for tokenizing the input
    COMMENT
    : '/*' (.|\\n)*? '*/'
    | '//' (.|\\n)*? '\\n'
    | '\\n'
    ;

    TOKEN
    : identifier
    | NUMBER
    | '(' ')'
    | '{' '}'
    | '[' ']'
    | '+' '+'
    | '-' '-'
    | '*' '*'
    | '/' '/'
    | '%' '%'
    | '==' '=='
    | '!=' '!='
    | '==' '=='
    | '<' '<'
    | '>' '>'
    | '<<'
    | '>>'
    | '&' '&'
    | '|' '|'
    | '^' '^'
    | '~' '~'
    | '!' '!'
    | ',' ','
    | ';' ';'
    | '?' '?'
    | ':' ':'
    | '->*'
    | '->'
    | '::'
    | '.' '.'
    | '::'
    | 'new'
    | 'delete'
    | 'throw'
    | 'try'
    | 'catch'

    | PREPROCESSOR_DIRECTIVES
    ;

    identifier
    : [a-zA-Z_] [a-zA-Z0-9_]*
    ;

    NUMBER
    : [0-9]+ ('.' [0-9]+)? (('e' |
    | 'E') ['+' | '-'] [0-9]+)?
    ;

%}