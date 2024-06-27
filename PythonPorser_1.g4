parser grammar PythonPorser;

opions{
    tokenVocab=PythonLexer;
}

code: stmt* EOF

stmt: expr "\n";

expr: ID 
    | NUMBER
    | expr OP_ARIT expr
    | "(" expr ")"
