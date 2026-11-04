{
module Main where
}

%name calc
%tokentype { Token }
%error { parseError }

%token

  --palavras reservadas
  program     { TkProgram }
  var         { TkVar } 
  begin       { TkBegin }
  end         { TkEnd }

    -- palavras reservadas de controle de fluxo
  if          { TkIf }
  then        { TkThen }
  else        { TkElse }

  -- palavras reservadas de loop
    while       { TkWhile }
    do          { TkDo }

    -- palavras reservadas booleanas
    true        { TkTrue }
    false       { TkFalse }

    -- funcoes de entrada e saida
    read        { TkRead }
    write       { TkWrite }

    -- operadores lógicos
    and         { TkAnd }
    or          { TkOr }
    not         { TkNot }

    -- operadores relacionais
    "="      { TkEqual }
    "<>"    { TkNequal }
    "<"     { TkLthan }
    ">"     { TkGthan }
    "<="    { TkLequal }
    ">="    { TkGequal }

    -- operadores aritméticos
    "+"     { TkPlus }
    "-"     { TkMinus }
    "*"     { TkMult }
    "/"     { TkRealDiv }
    div     { TkDiv }
    mod     { TkMod }

    -- tipos de dados
    typeInt     { TkTypeInteger }
    typeBool    { TkTypeBoolean }
    typeReal    { TkTypeReal }
    typeStr     { TkTypeString }

    -- valores literais e identificadores ($$ vai extrair o valor guardado)
    id          { TkId $$ }
    int         { TkInt $$ }
    real        { TkReal $$ }
    str         { TkString $$ }

    -- pontuação
    ":="        { TkAssign }
    ";"         { TkSemicolon }
    "."         { TkPeriod }
    ","         { TkComma }
    "("         { TkLparen }
    ")"         { TkRparen }
    ":"         { TkColon }




%%

--programa principal

--program Nome; var...beging...end.
Program : program id ";" var Declrs begin Body end "."  {Prog $2 $5 $7 } 
--program Noem; begin...end.
        | program id ";" begin Body end "." {ProgWithoutVar $2 $5 }
            
--declaracoes de variaveis
Declrs : Declr {$1}
        | Declr Declrs {CompoundDeclr $1 $2}

Declr: VarList ":" Type ";" {Declr $1 $3}

VarList : id {[$1]}
         | id "," VarList { $1 : $3}

-- Tipos de dados
Type : typeInt {TypeInt}
     | typeBool {TypeBool}
     | typeReal {TypeReal}
     | typeStr {TypeString}

-- comandos/instruções
Stmt: id := Exp {AssignStmt $1 $2}
     |if Exp then Stmt{IfThenStmt $2 $4}
     |if Exp then Stmt else Stmt{IfThenElseStmt $2 $4 $6}
     |while Exp do Stmt{WhileDoStmt $2 $4}
     |read id {ReadStmt $2}
     |write Exp {WriteStmt $2}
     |CompoundStmt Stmt Stmt {CompoundStmt $1 $2}

Exp : id {Var $1}
    | int {IntLit $1}
    | real {RealLit $1}
    | str {StringLit $1}
    