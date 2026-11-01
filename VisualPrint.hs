module VisualPrint where

import AST

--simbolos visuais para desenhar a arvore
branch :: String
branch = "├── "

pipe :: String
pipe  =  "│   "

--funcao principal
visualPrintAST :: Program -> String
visualPrintAST prog = unlines (ppProgram prog) --unlines pega na lista e junta tudo num bloco de texto unico inserindo paragrafos

--espacamento e traços aos nos descendentes
indent :: [String] -> [String]
indent [] = []
indent (x:xs) = (branch ++ x) : map (pipe ++) xs

--desenha o nome do no atual e processa os subniveis
--recebe o nome do ramo principal e a lista dos elementos dentro dele
draw :: String -> [[String]] -> [String]
draw name children = name : concatMap indent children

--programa principal
ppProgram :: Program -> [String]
ppProgram (Prog name declrs stmt) = draw "Program" [[name], ppDeclrs declrs, ppStmt stmt]
ppProgram (ProgWithoutVar name stmt) = draw "Program" [[name], ppStmt stmt]

--declaracoes
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
ppStmt (IfThenStmt cond th) = draw "IfThen" [ppExp cond, ppStmt th]
ppStmt (IfThenElseStmt cond th el) = draw "IfThenElse" [ppExp cond, ppStmt th, ppStmt el]
ppStmt (WhileStmt cond body) = draw "While" [ppExp cond, ppStmt body]
ppStmt (ReadStmt var) = draw "Read" [[var]]
ppStmt (WriteStmt e) = draw "write" [ppExp e]
ppStmt (CompoundStmt s1 s2) = draw "CompoundStmt" [ppStmt s1, ppStmt s2]

--expressoes
ppExp :: Exp -> [String]
ppExp (Var s) = [s]
ppExp (IntLit i) = [show i]
ppExp (RealLit f) = [show f]
ppExp (StringLit s) = [show s]
ppExp TrueLit = ["True"]
ppExp FalseLit = ["False"]
ppExp (Not e) = draw "Not" [ppExp e]
ppExp (Add e1 e2) = draw "Add" [ppExp e1, ppExp e2]
ppExp (Sub e1 e2) = draw "Sub" [ppExp e1, ppExp e2]
ppExp (Mult e1 e2) = draw "Mult" [ppExp e1, ppExp e2]
ppExp (RealDiv e1 e2) = draw "RealDiv" [ppExp e1, ppExp e2]
ppExp (Div e1 e2) = draw "Div" [ppExp e1, ppExp e2]
ppExp (Mod e1 e2) = draw "Mod" [ppExp e1, ppExp e2]
ppExp (Eq e1 e2) = draw "Eq" [ppExp e1, ppExp e2]
ppExp (Neq e1 e2) = draw "Neq" [ppExp e1, ppExp e2]
ppExp (Lt e1 e2) = draw "Lt" [ppExp e1, ppExp e2]
ppExp (Gt e1 e2) = draw "Gt" [ppExp e1, ppExp e2]
ppExp (Le e1 e2) = draw "Le" [ppExp e1, ppExp e2]
ppExp (Ge e1 e2) = draw "Ge" [ppExp e1, ppExp e2]
ppExp (And e1 e2) = draw "And" [ppExp e1, ppExp e2]
ppExp (Or e1 e2) = draw "Or" [ppExp e1, ppExp e2]
