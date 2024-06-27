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

// Atualização

query: 'True'
    | 'False'
    | '(' query ')'
    | query OP_BOOL query 
    | "not" query
