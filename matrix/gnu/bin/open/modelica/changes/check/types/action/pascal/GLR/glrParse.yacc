/*
The above copyright notice and this permission
*/

%{
    /*
    # Define a regular expression pattern for the numbers
    # The pattern matches any decimal number (including negative numbers)
    # The decimal point can be either a dot or a comma
    # The optional sign character can be either '+' or '-'
    # The optional thousands separators can be either a space or a comma
    # The pattern is enclosed in parentheses for use in the ACTION section
    # The 'x' flag enables extended regular expression syntax
    */
    regex(NUMBER, "[+-]?\\d+(?:\\.\\d+)?(?:[ ,]\\d+)?");

    /*
    # Define a regular expression pattern for the variable names
    # The pattern matches any sequence of alphanumeric characters, underscores, or dollar signs
    # The pattern is enclosed in parentheses for use in the ACTION section
    */
    regex(VARNAME, "[a-zA-Z_$][a-zA-Z0-9_$]*");

    /*
    # Define a regular expression pattern for the variable assignments
    # The pattern matches the variable name followed by an equal sign and the variable value
    # The pattern is enclosed in parentheses for use in the ACTION section
    */
    regex(ASSIGNMENT, VARNAME "\\s*=\\s*" NUMBER);

    /*
    # Define a regular expression pattern for the arithmetic operations
    # The pattern matches the following operators: addition (+), subtraction (-), multiplication (*), division (/), and modulo (%)
    # The pattern is enclosed in parentheses for use in the ACTION section
    */
    regex(OPERATOR, "[+\\-*/%]");

    /*
    # Define a regular expression pattern for the parentheses
    # The pattern matches the opening and closing parentheses
    # The pattern is enclosed in parentheses for use in the ACTION section
    */
    regex(LPAREN, "\\(");
    regex(RPAREN, "\\)");

    /*
    # Define a regular expression pattern for the whitespace characters
    # The pattern matches any whitespace character (spaces, tabs, or newlines)
    # The pattern is enclosed in parentheses for use in the ACTION section
    */
    regex(WHITESPACE, "[\\s]+");

%}