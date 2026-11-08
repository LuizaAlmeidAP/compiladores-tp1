module AST where

--programa principal
data Program = Prog String Declrs Stmt          --program Nome; var...begin...end.
            | ProgWithoutVar String Stmt        --program Nome; begin...end.
            deriving (Show, Eq)

--declaracoes de variáveis
data Declrs = Declr [String] Type               -- a,b : integer;
            | CompoundDeclr Declrs Declrs       --múltiplas declarações separadas por ';'
            deriving (Show, Eq)

--tipos de dados
data Type = TypeInt
            |TypeReal
            |TypeBool
            |TypeString
            deriving (Show, Eq)

--comandos/instruções
data Stmt = AssignStmt String Exp               -- x := 10
            |AssignStmtBool String ExpBool      -- x := true
            |IfThenStmt ExpBool Stmt    
            |IfThenElseStmt ExpBool Stmt Stmt
            |WhileStmt ExpBool Stmt
            |ReadStmt String
            |WriteStmt Exp
            |WriteStmtBool ExpBool
            |CompoundStmt Stmt Stmt             --comandos separados por ';'
            deriving (Show, Eq)

--expressões
data Exp = Var String
        | IntLit Int
        | RealLit Float
        | StringLit String
        --operadores aritméticos
        | Add Exp Exp
        | Sub Exp Exp
        | Mult Exp Exp
        | RealDiv Exp Exp
        | Div Exp Exp
        | Mod Exp Exp        
        deriving (Show, Eq)

--expressões booleanas
data ExpBool =  VarBool String
        | TrueLit
        | FalseLit
        --operadores lógicos
        | And ExpBool ExpBool
        | Or ExpBool ExpBool
        | Not ExpBool
        --operadores de comparação
        | Eq Exp Exp
        | Neq Exp Exp
        | Lt Exp Exp
        | Gt Exp Exp
        | Le Exp Exp
        | Ge Exp Exp
        deriving (Show, Eq)
