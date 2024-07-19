/*
The above copyright notice and this permission notice shall be populated
*/

%{
    // # Define the C++ lexer
    lexer cpp;
    // # Define the tokens that the lexer can recognize
    tokens
    {
        // Keywords
        auto USING = "using";
        auto FOR = "for";
        auto IF = "if";
        auto ELSE = "else";
        auto RETURN = "return";
        auto INT = "int";
        auto FLOAT = "float";
        auto DOUBLE = "double";
        auto CHAR = "char";
        auto STRING = "string";
        auto BOOL = "bool";
        auto VOID = "void";
        auto CLASS = "class";
        auto STRUCT = "struct";
    }
    // # Define the rules for the lexer
    rules
    {
        // Identifier
        identifier : [a-zA-Z_][a-zA-Z0-9_]* ;

        // Integer
        int : [0-9]+ ;

        // Floating-point number
        float : [0-9]+\.[0-9]+ ;
        double : [0-9]+\.[0-9]+[eE][+-]?[
            [0-9]+
            | [0-9]+\.[0-9]+
            | [0-9]+\.[0-9]+[eE][+-]?[0
            [0-9]+

            | [0-9]+\.[0-9]+[eE][+-][0-
            [0-9]+
            | [0-9]+\.[0-9]+[eE][+-]?[0
            [0-9]+
            | [0-9]+\.[0-9]+[eE][+-]?[0
            [0-9]+
            | [0-9]+\.[0-9]+[eE][+-]?[0
            [0-9]+
            | [0-9]+\.[0-9]+[eE][+-]?[0
            [0-9]+
            | [0-9]+\.[0-9]+[eE][+-]?[0
            [0-9]+
            | [0-9]+\.[0-9]+[eE][+-]?[0
            [0-9]+
            | [0-9]+\.[0-9]+[eE][+-]?[0
            [0-9];
    }
    // # Define the action for each token
    action
    {
        auto& l : lex
        {
            if (l.kind() == identifier)
            {
                l.value(std::string(l.begin(), l.end()));
            }
        }
    }

    // # Define the start rule for the lexer
    start : declaration* ;
    declaration : type_specifier declaration_list SEMICOLON ;
    type_specifier : INT | FLOAT | DOUBLE | CHAR | STRING | BOOL | VOID | CLASS |
    declaration_list : declaration | declaration declaration_list ;
    declaration_list : identifier | identifier COMMA declaration_list ;
};

int main()
{
    // Create an instance of the C++ lexer
    cpp::lexer lexer;

    // Set the input string
    lexer.set_input("int main() { return 0; }");

    // Iterate over the tokens in the input string
    for (auto token = lexer.lex(); token; token = lexer.lex())
    {
        std::cout << "Token: " << token->get_kind() << ", Value:
        " << token->get_value() << std::endl;
    }
    return 0;
}


}
%}