module AST where

--programa principal
data Program = Prog String Declrs Stmt  --program Nome; var...beging...end.
            | ProgWithoutVar String Stmt --program Nome; begin...end.
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
            |AssignStmtBool String ExpBool -- x := true
            |IfThenStmt ExpBool Stmt    
            |IfThenElseStmt ExpBool Stmt Stmt
            |WhileStmt ExpBool Stmt
            |ReadStmt String
            |WriteStmt Exp
            |WriteStmtBool ExpBool
            |CompoundStmt Stmt Stmt --comandos separados por ;
            deriving (Show, Eq)

--expressoes
data Exp = Var String
        | IntLit Int
        | RealLit Float
        | StringLit String
        --operadores aritmeticos
        | Add Exp Exp
        | Sub Exp Exp
        | Mult Exp Exp
        | RealDiv Exp Exp
        | Div Exp Exp
        | Mod Exp Exp        
        deriving (Show, Eq)

--expressões booleanas
data ExpBool =  TrueLit
        | FalseLit
        --operadores logicos
        | And ExpBool ExpBool
        | Or ExpBool ExpBool
        | Not ExpBool
        --operadores de comparacao
        | Eq Exp Exp
        | Neq Exp Exp
        | Lt Exp Exp
        | Gt Exp Exp
        | Le Exp Exp
        | Ge Exp Exp
        deriving (Show, Eq)
