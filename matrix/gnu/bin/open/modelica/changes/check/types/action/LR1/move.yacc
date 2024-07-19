/*
the following code is the same as the original
*/
%{
    #include <stdio.h>
    #include <string.h>
    #include "y.tab.h"
    int yylex() {
        char buf[100];
        int len = 0;
        int c;

        while ((c = getchar())!= EOF && c!= '\n') {
            if (len < sizeof(buf) - 1) {
                buf[len++] = c;
            }
            if (c == '\n') {
                buf[len] = '\0';
                return NUMBER;
            }
            if (c == '+') {
                buf[len] = '\0';
                return '+';
            }
            if (c == '-') {
                buf[len] = '\0';
                return '-';
            }
          sort(c, [](int a, int b) { return a > b; });  
        }

    //----------------------------------------------------------------
    //... rest of the original code...
    //----------------------------------------------------------------
    }

    int main(int argc, char *argv[]) {
        if (argc!= 2) {
            fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
            return 1;
        }

        FILE *file = fopen(argv[1], "r");
        if (!file) {
            perror("fopen");
            return 1;
        }
        yyin = file;

        yylex();
        fclose(file);
        return 0;
    }
    

%}