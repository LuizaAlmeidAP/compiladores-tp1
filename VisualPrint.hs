module VisualPrint where

import AST

--símbolos visuais para desenhar a árvore
branch :: String
branch = "├── "

pipe :: String
pipe  =  "│   "

--função principal
visualPrintAST :: Program -> String
visualPrintAST prog = unlines (ppProgram prog)

--espaçamento e traços aos nós descendentes
indent :: [String] -> [String]
indent [] = []
indent (x:xs) = (branch ++ x) : map (pipe ++) xs

--desenha o nome do nó atual e processa os subníveis
draw :: String -> [[String]] -> [String]
draw name children = name : concatMap indent children

--programa principal
ppProgram :: Program -> [String]
ppProgram (Prog name declrs stmt) = draw "Program" [[name], ppDeclrs declrs, ppStmt stmt]
ppProgram (ProgWithoutVar name stmt) = draw "Program" [[name], ppStmt stmt]

--declarações
ppDeclrs :: Declrs -> [String]
ppDeclrs (Declr vars t) = draw "Declr" [[show vars], ppType t]
ppDeclrs (CompoundDeclr d1 d2) = draw "CompoundDeclr" [ppDeclrs d1, ppDeclrs d2]

---tipos de dados
ppType :: Type -> [String]
ppType TypeInt = ["Integer"]
ppType TypeReal = ["Real"]
ppType TypeBool = ["Boolean"]
ppType TypeString = ["String"]

--comandos
ppStmt :: Stmt -> [String]
ppStmt (AssignStmt var e) = draw "Assign" [[var], ppExp e]
ppStmt (AssignStmtBool var e) = draw "AssignBool" [[var], ppExpBool e]
ppStmt (IfThenStmt cond th) = draw "IfThen" [ppExpBool cond, ppStmt th]
ppStmt (IfThenElseStmt cond th el) = draw "IfThenElse" [ppExpBool cond, ppStmt th, ppStmt el]
ppStmt (WhileStmt cond body) = draw "While" [ppExpBool cond, ppStmt body]
ppStmt (ReadStmt var) = draw "Read" [[var]]
ppStmt (WriteStmt e) = draw "Write" [ppExp e]
ppStmt (WriteStmtBool e) = draw "WriteBool" [ppExpBool e]
ppStmt (CompoundStmt s1 s2) = draw "CompoundStmt" [ppStmt s1, ppStmt s2]

--expressões
ppExp :: Exp -> [String]
ppExp (Var s) = [s]
ppExp (IntLit i) = [show i]
ppExp (RealLit f) = [show f]
ppExp (StringLit s) = [show s]
ppExp (Add e1 e2) = draw "Add" [ppExp e1, ppExp e2]
ppExp (Sub e1 e2) = draw "Sub" [ppExp e1, ppExp e2]
ppExp (Mult e1 e2) = draw "Mult" [ppExp e1, ppExp e2]
ppExp (RealDiv e1 e2) = draw "RealDiv" [ppExp e1, ppExp e2]
ppExp (Div e1 e2) = draw "Div" [ppExp e1, ppExp e2]
ppExp (Mod e1 e2) = draw "Mod" [ppExp e1, ppExp e2]

--expressões booleanas
ppExpBool :: ExpBool -> [String]
ppExpBool (VarBool s) = [s]
ppExpBool TrueLit = ["True"]
ppExpBool FalseLit = ["False"]
ppExpBool (Not e) = draw "Not" [ppExpBool e]
ppExpBool (And e1 e2) = draw "And" [ppExpBool e1, ppExpBool e2]
ppExpBool (Or e1 e2) = draw "Or" [ppExpBool e1, ppExpBool e2]
ppExpBool (Eq e1 e2) = draw "Eq" [ppExp e1, ppExp e2]
ppExpBool (Neq e1 e2) = draw "Neq" [ppExp e1, ppExp e2]
ppExpBool (Lt e1 e2) = draw "Lt" [ppExp e1, ppExp e2]
ppExpBool (Gt e1 e2) = draw "Gt" [ppExp e1, ppExp e2]
ppExpBool (Le e1 e2) = draw "Le" [ppExp e1, ppExp e2]
ppExpBool (Ge e1 e2) = draw "Ge" [ppExp e1, ppExp e2]           
