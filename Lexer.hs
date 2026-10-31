module Main where

import Data.Char (isDigit, isSpace, isAlpha, isAlphaNum)

-- Lista de tokens do compilador
import Tokens

lexer :: [Char] -> [Token]
lexer [] = []
lexer ('+':xs) = PLUS:lexer xs
lexer ('-':xs) = MINUS:lexer xs
lexer ('*':xs) = MULT:lexer xs
lexer ('/':xs) = DIV:lexer xs
lexer ('=':xs) = EQUAL:lexer xs
lexer ('<':'=':xs) = LEQUAL:lexer xs
lexer ('<':'>':xs) = NEQUAL:lexer xs
lexer ('<':xs) = LTHAN:lexer xs
lexer ('>':'=':xs) = GEQUAL:lexer xs
lexer ('>':xs) = GTHAN:lexer xs
lexer ('(':xs) = LPAREN:lexer xs
lexer (')':xs) = RPAREN:lexer xs
lexer (',':xs) = COMMA:lexer xs
lexer (';':xs) = SEMICOLON:lexer xs
lexer (':':'=':xs) = ASSIGN:lexer xs
lexer (':':xs) = COLON:lexer xs
lexer (x:xs)
  | isSpace x = lexer xs        -- consumir carateres brancos
lexer (x:xs) -- numeros inteiros e reais
  | isDigit x = case xs'' of
    ('.':y:ys) | isDigit y -> 
      let ys' = takeWhile isDigit ys
          ys'' = dropWhile isDigit ys
          in REAL (read (x : xs' ++ '.' : y : ys')) : lexer ys''
    _ -> INT (read (x:xs')) : lexer xs''
  where xs' = takeWhile isDigit xs
        xs''= dropWhile isDigit xs
lexer (x:xs) -- identificadores e palavras reservadas
  | isAlpha x || x == '_'  = lexerText (x:xs') : lexer xs''
  where xs' = takeWhile isIdent xs
        xs''= dropWhile isIdent xs

-- funcao auxiliar para distinguir palavras reservadas de identificadores
lexerText :: String -> Token
lexerText "write" = WRITE
lexerText "read" = READ 
lexerText "var" = VAR
lexerText "const" = CONST
lexerText "program" = PROGRAM
lexerText "begin" = BEGIN
lexerText "end" = END
lexerText "mod" = MOD
lexerText "and" = AND
lexerText "record" = RECORD
lexerText "if" = IF
lexerText "then" = THEN
lexerText "else" = ELSE
lexerText "type" = TYPE
lexerText "while" = WHILE
lexerText "true" = TRUE
lexerText "false" = FALSE
lexerText xs   = ID xs


-- função auxiliar para verificar se um carater é válido num identificador
isIdent :: Char -> Bool
isIdent x = isAlphaNum x || x == '_'

-- ler toda a entrada e imprimir a lista de tokens
main :: IO ()
main = do
  txt <- getContents
  print (lexer txt)
