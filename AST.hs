module AST where

--programa principal
data Program = Prog String Declrs Stmt  --program Nome; var...beging...end.
            | ProgWithoutVar String Stmt --program Noem; begin...end.
            deriving (Show, Eq)

--declaracoes de variaveis
data Declrs = Declr [String] Type -- a,b : integer;
            | CompoundDeclr Declrs Declrs --varias declaracoes separadas por ;
            deriving (Show, Eq)

--tipos de dados
data Type = TypeInt
            |TypeReal
            |TypeBool
            |TypeString
            deriving (Show, Eq)

--comandos/instrucoes
data Stmt = AssignStmt String Exp -- x := 10
            |IfThenStmt Exp Stmt    
            |IfThenElseStmt Exp Stmt Stmt
            |WhileStmt Exp Stmt
            |ReadStmt String
            |WriteStmt Exp
            |CompoundStmt Stmt Stmt --comandos separados por ;
            deriving (Show, Eq)

--expressoes
data Exp = Var String
        | IntLit Int
        | RealLit Float
        | StringLit String
        | TrueLit
        | FalseLit
        --operadores aritmeticos
        | Add Exp Exp
        | Sub Exp Exp
        | Mult Exp Exp
        | RealDiv Exp Exp
        | Div Exp Exp
        | Mod Exp Exp
        --operadores d ecomparacao
        | Eq Exp Exp
        | Neq Exp Exp
        | Lt Exp Exp
        | Gt Exp Exp
        | Le Exp Exp
        | Ge Exp Exp
        --operadores logicos
        | And Exp Exp
        | Or Exp Exp
        | Not Exp
        deriving (Show, Eq)
