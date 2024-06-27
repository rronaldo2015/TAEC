lexer grammar PythonLexer;

ID : [a-zA-Z_][a-zA-Z_0-9]* ;
NUMBER : [0-9]+ ;
OP_ARIT : '+' 
        | '-' 
        | '*' 
        | '/' 
        | '%' 
        | '**' ; // Operadores aritméticos em linhas separadas
LPAREN : '(' ;
RPAREN : ')' ;
WS : [ \t\r\n]+ -> skip ;  // Ignora espaços em branco
