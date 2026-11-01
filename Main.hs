module Main where

import Lexer (alexScanTokens)
import Parser (parse)
import VisualPrint (visualPrintAST)
import System.IO (hFlush, stdout)

main :: IO()
main = do
    putStrLn "\n========================================="
    putStrLn "      COMPILADOR PASCAL - FASE 1       "
    putStrLn "========================================="
    putStrLn "Escolha o ficheiro de teste para compilar:"
    putStrLn " 1 - aritmetica.pas"
    putStrLn " 2 - boolean.pas"
    putStrLn " 3 - declaracoes.pas"
    putStrLn " 4 - colisaoPalavrasReservadas.pas"
    putStrLn " 5 - condicional.pas"
    putStrLn " 6 - loops.pas"
    putStrLn " 7 - maiusculas.pas"
    putStrLn " 8 - literais.pas"
    putStrLn " 9 - stress.pas"
    putStrLn "10 - operadores.pas"
    putStrLn "11 - IO.pas"
    putStrLn " 0 - Sair"
    putStrLn "========================================="
    putStr "Opção: "
    hFlush stdout

    opcao <- getLine
    
    let ficheiro = case opcao of
            "1"  -> "aritmetica.pas"
            "2"  -> "boolean.pas"
            "3"  -> "declaracoes.pas"
            "4"  -> "colisaoPalavrasReservadas.pas"
            "5"  -> "condicional.pas"
            "6"  -> "loops.pas"
            "7"  -> "maiusculas.pas"
            "8"  -> "literais.pas"
            "9"  -> "stress.pas"
            "10" -> "operadores.pas"
            "11" -> "IO.pas"
            "0"  -> "SAIR"
            _    -> "ERRO"

    if ficheiro == "SAIR"
        then putStrLn "A encerrar o compilador..."
        else if ficheiro == "ERRO"
            then do
                putStrLn "Opção inválida! Tente novamente."
                main
            else do
                putStrLn $ "\nA ler o ficheiro: " ++ ficheiro ++ "..."
                codigoFonte <- readFile ficheiro
                
                let tokens = alexScanTokens codigoFonte
                let ast = parse tokens
                
                putStrLn "\n--- ARVORE SINTATICA (AST) ---"
                putStrLn (visualPrintAST ast)
                
                putStrLn "\nPressione ENTER para voltar ao menu..."
                _ <- getLine
                main
