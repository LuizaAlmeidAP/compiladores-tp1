{
module Parser where
import Lexer
import AST
}

%name parse
%tokentype { Token }
%error { parseError }

%token
    --palavras reservadas da estrutura do programa
    program     { TkProgram }
    var         { TkVar }
    begin       { TkBegin }
    end         { TkEnd }

    --comandos
    if          { TkIf }
    then        { TkThen }
    else        { TkElse }
    while       { TkWhile }
    do          { TkDo }
    read        { TkRead }
    write       { TkWrite }

    --tipos de dados
    typeInt     { TkTypeInteger }
    typeBool    { TkTypeBoolean }
    typeReal    { TkTypeReal }
    typeStr     { TkTypeString}

    --valores literais e identificadores ($$ vai extrair o valor guardado)
    id          { TkId $$ }
    int         { TkInt $$ }
    real        { TkReal $$ }
    str         { TkString $$ }
    true        { TkTrue }
    false       { TkFalse }

    --operadores logicos
    and         { TkAnd }
    or          { TkOr }
    not         { TkNot }

    --operadores de comparacao
    '='         { TkEqual }
    '<>'        { TkNequal }
    '<'         { TkLthan }
    '>'         { TkGthan }
    '<='        { TkLequal }
    '>='        { TkGequal }

    --operacoes aritmeticos
    '+'         { TkPlus }
    '-'         { TkMinus }
    '*'         { TkMult }
    '/'         { TkRealDiv }
    div         { TkDiv }
    mod         { TkMod }

    --pontuacao
    ':='        { TkAssign }
    ';'         { TkSemicolon }
    '.'         { TkPeriod }
    ','         { TkComma }
    '('         { TkLparen }
    ')'         { TkRparen }
    ':'         { TkColon }

--precedencias
%nonassoc then do
%nonassoc else
%left or
%left and
%nonassoc '=' '<>' '<' '>' '<=' '>='
%left '+' '-'
%left '*' '/' div mod
%right not

%%

--programa principal
Program : program id ';' var Declrs begin Body end '.'      { Prog $2 $5 $7 }
        | program id ';' begin Body end '.'                 { ProgWithoutVar $2 $5 }


--declaracao de variavies
Declrs : Declr                                              { $1 }
        | Declr Declrs                                      { CompoundDeclr $1 $2 }

Declr : VarList ':' Type ';'                                { Declr $1 $3 }

VarList : id                                                { [$1] }
        | id ',' VarList                                    { $1 : $3 }

--tipos de dados
Type : typeInt                                              { TypeInt }
     | typeReal                                             { TypeReal }    
     | typeBool                                             { TypeBool }
     | typeStr                                              { TypeString }

--corpo e instrucoes
Body : Stmt                                                  { $1 }
     | Stmt ';'                                              { $1 }
     | Stmt ';' Body                                         { CompoundStmt $1 $3 }

Stmt : id ':=' Exp                                           { AssignStmt $1 $3 }
     | id ':=' ExpBool                                       { AssignStmtBool $1 $3 }
     | if ExpBool then Stmt                                  { IfThenStmt $2 $4 }
     | if id then Stmt                                       { IfThenStmt (VarBool $2) $4 }
     | if ExpBool then Stmt else Stmt                        { IfThenElseStmt $2 $4 $6 }
     | if id then Stmt else Stmt                             { IfThenElseStmt (VarBool $2) $4 $6 }
     | while ExpBool do Stmt                                 { WhileStmt $2 $4 }
     | while id do Stmt                                      { WhileStmt (VarBool $2) $4 }
     | read '(' id ')'                                       { ReadStmt $3 }
     | write '(' Exp ')'                                     { WriteStmt $3 }
     | write '(' ExpBool ')'                                 { WriteStmtBool $3 }
     | begin Body end                                        { $2 }

--expressoes
Exp : id                                                     { Var $1 }
    | int                                                    { IntLit $1 }
    | real                                                   { RealLit $1 }
    | str                                                    { StringLit $1 }
    | '(' Exp ')'                                            { $2 }
    --op aritmaticos
    | Exp '+' Exp                                            { Add $1 $3 }
    | Exp '-' Exp                                            { Sub $1 $3 }
    | Exp '*' Exp                                            { Mult $1 $3 }
    | Exp '/' Exp                                            { RealDiv $1 $3 }
    | Exp div Exp                                            { Div $1 $3 }
    | Exp mod Exp                                            { Mod $1 $3 }
    
ExpBool : true                                               { TrueLit }
        | false                                              { FalseLit }
        | '(' ExpBool ')'                                    { $2 }
        | Exp '=' Exp                                        { Eq $1 $3 }    
        | Exp '<>' Exp                                       { Neq $1 $3 }
        | Exp '<' Exp                                        { Lt $1 $3 }
        | Exp '>' Exp                                        { Gt $1 $3 }
        | Exp '<=' Exp                                       { Le $1 $3 }
        | Exp '>=' Exp                                       { Ge $1 $3 }
        --op logicos
        | ExpBool and ExpBool                                { And $1 $3 }
        | ExpBool and id %prec and                           { And $1 (VarBool $3) }
        | id and ExpBool %prec and                           { And (VarBool $1) $3 }
        | id and id %prec and                                { And (VarBool $1) (VarBool $3) }
        | ExpBool or ExpBool                                 { Or $1 $3 }
        | ExpBool or id %prec or                             { Or $1 (VarBool $3) }
        | id or ExpBool %prec or                             { Or (VarBool $1) $3 }
        | id or id %prec or                                  { Or (VarBool $1) (VarBool $3) }
        | not ExpBool                                        { Not $2 }
        | not id %prec not                                   { Not (VarBool $2) }
{
parseError :: [Token] -> a
parseError [] = error "Erro de Sintaxe: O ficheiro terminou inesperadamente (EOF)."
parseError (token:_) = error ("Erro de Sintaxe: Token inesperado -> " ++ show token)
} 
