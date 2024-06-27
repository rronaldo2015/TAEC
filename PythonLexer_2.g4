lexer grammar PythonLexer;

// Tokens
TRUE : 'True' ;        // Representa o valor booleano verdadeiro
FALSE : 'False' ;      // Representa o valor booleano falso
OP_BOOL : 'and' | 'or' ; // Operadores booleanos 'and' e 'or'
LPAREN : '(' ;          // Representa o caractere de parêntese esquerdo '('
RPAREN : ')' ;          // Representa o caractere de parêntese direito ')'
WS : [ \t\r\n]+ -> skip ; // Ignora espaços em branco
