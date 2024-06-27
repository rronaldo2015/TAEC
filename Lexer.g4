// DELETE THIS CONTENT IF YOU PUT COMBINED GRAMMAR IN Parser TAB
lexer grammar ExprLexer;

LINE_BREAK: '\n';
LEFT_PARENTHESIS: '(';
RIGHT_PARENTHESIS: ')';
IMAGINARIO: 'j';

TRUE: 'True';
FALSE: 'False';
NOT: 'not';

OP_BOOL: 'and'
    | 'or'
    | '&'
    | '|'
    ;

OP_ARIT: '+'
    | '-'
    | '/'
    | '*'
    | '**'
    | '//'
    | '%'
    ;
    
    fragment INT : [0-9]+ ;
    fragment FLOAT: INT '.' INT;
    fragment COMPLEX: FLOAT [+\-] FLOAT 'j'
    
    NUMBER: INT
        | FLOAT
    //    |COMPLEX
        ;


ID: [a-zA-Z_][a-zA-Z_0-9]* ;
WS: [ \t\n\r\f]+ -> skip ;
