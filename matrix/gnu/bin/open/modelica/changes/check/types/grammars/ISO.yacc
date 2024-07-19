/*
The above copyright notice and this permission notice shall be
*/

%{
    // # Define the token pattern for comments
    token comment { // Matches /*... */
        /\/\*(.|\n)*?\*\/
    }
    // # Define the token pattern for strings
    token string { // Matches "..."
    /\"(?:[^\\\"]|(\\.))*?\""/
    }
    // # Define the token pattern for numbers
    token number { // Matches integers and floats
    /[+-]?\d+(?:\.\d+)?(?:[eE][+-]?\
    \d+)?/
    }
    // # Define the token pattern for identifiers
    token identifier { // Matches identifiers
    /[a-zA-Z_][a-zA-Z0-9_]*/
    }
    // # Define the token pattern for whitespace
    token whitespace { // Matches whitespace characters
    /[ \t\r\n]+/
    }
    // # Define the token pattern for operators
    token operator { // Matches operators
    /[+\-*/%<>=()]/
    }
    // # Define the token pattern for punctuation
    token punctuation { // Matches punctuation characters
    /[!@#$%^&*()\-+={}|[\]\\:;\"',.<>?/`"
    }
    // # Define the token pattern for keywords
    token keyword { // Matches keywords
    /(auto|break|case|char|const|continue|default|do|double|
    else|enum|extern|float|for|goto|if|int|long|register|
    return|short|signed|sizeof|static|struct|switch|typedef|union|
    unsigned|void|volatile|while)/
    }
    // # Define the token pattern for preprocessor directives
    token directive { // Matches preprocessor directives
    /#[^\n]*\n/
    }

    // # Define the token pattern for whitespace characters
    token whitespace {
        /[ \t\r\n]+/
    }

    // # Define the token pattern for identifiers
    token identifier {
        /[a-zA-Z_][a-zA-Z0-9_]*/
    }
    // # Define the token pattern for operators
    token operator {
        /[+\-*/%<>=()]/
    }
    // # Define the token pattern for punctuation
    token punctuation {
        /[!@#$%^&*()\-+={}|[\]\\:;\"',.<>?/`"
    }
    // # Define the token pattern for keywords
    token keyword {
        /(auto|break|case|char|const|continue|default|do|double|
        else|enum|extern|float|for|goto|if|int|long|register|
        return|short|signed|sizeof|static|struct|switch|typedef|union|
        unsigned|void|volatile|while)/
    }
    // # Define the token pattern for preprocessor directives
    token directive {
        /#[^\n]*\n/
    }
    // # Define the token pattern for strings
    token string {
        /\"(?:[^\\\"]|(\\.))*?\"/"
    }
    // # Define the token pattern for numbers
    token number {
        /[+-]?\d+(?:\.\d+)?(?:[eE][+-]?\d+)?/
    }
    // # Define the token pattern for comments
    token comment {
        /\/\*(.|\n)*?\*\/
    }
    // # Define the token pattern for whitespace characters
    token whitespace {
        /[ \t\r\n]+/
    }
    // # Define the token pattern for identifiers
    token identifier {
        /[a-zA-Z_][a-zA-Z0-9_]*/
    }

%}






