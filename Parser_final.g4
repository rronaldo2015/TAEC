parser grammar ExprParser;
options { tokenVocab=ExprLexer; }

programa : code EOF;

code : (stat | conditional | func | func_call)* ;

stat : (expr | atrib | query) NEWLINE* ;

expr : ID
    | INT
    | FLOAT
    | printStatement
    | simplePrintStatement
    | formatExpr
    | expr SPACE? OP_ARIT SPACE? expr // Operações aritméticas
    | expr SPACE? OP_RELA SPACE? expr // Operações relacionais
    | OP_ARIT? INT
    | '(' expr ')'
    | func_call
    ;

atrib : ID SPACE? '=' SPACE? expr ;

func : DEF SPACE? ID '(' (ID (COMMA SPACE? ID)*)? ')' COLON NEWLINE SPACE* stat* (conditional | stat)* SPACE* 'return'? SPACE? expr? NEWLINE ;

func_call : ID '(' (expr (COMMA SPACE? expr)*)? ')' ;

query : TRUE 
    | FALSE
    | '(' SPACE? query SPACE? ')'
    | query SPACE? OP_BOOL SPACE? query
    | NOT SPACE? query
    | expr
    ;

conditional : ifStat | elifStat | elseStat ;

ifStat : IF SPACE? '('? SPACE? (expr | query) SPACE? ')'? SPACE? COLON NEWLINE SPACE* stat* (elifStat | elseStat)? ;

elifStat : ELIF SPACE? '('? SPACE? (expr | query) SPACE? ')'? SPACE? COLON NEWLINE SPACE* stat* ;

elseStat : ELSE SPACE? COLON NEWLINE SPACE* stat* ;

printStatement : PRINT SPACE? '(' SPACE? STRING (SPACE? formatExpr)? SPACE? ')' ;

simplePrintStatement : PRINT SPACE? '(' SPACE? STRING SPACE? ')' ;

formatExpr : DOT SPACE? FORMAT SPACE? '(' SPACE? expr SPACE? ')' ;
