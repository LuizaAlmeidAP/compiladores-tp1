module Main where

import Lexer (alexScanTokens)
import Parser (parse)
import VisualPrint (visualPrintAST)
import System.IO (hFlush, stdout)

main :: IO ()
main = do
    putStrLn "\n========================================="
    putStrLn "       COMPILADOR PASCAL - FASE 1        "
    putStrLn "========================================="
    putStrLn "Escolha um tipo de ficheiro de teste para compilar:"
    putStrLn " 1 - Testes corretos"
    putStrLn " 2 - Testes errados"
    putStrLn " 0 - Sair"
    putStrLn "========================================="
    putStr "Opção: "
    hFlush stdout
    
    opcao1 <- getLine
    let tipoFicheiro = case opcao1 of
            "1" -> "testes-corretos"
            "2" -> "testes-errados"
            "0" -> "SAIR"
            _   -> "ERRO"

    if tipoFicheiro == "SAIR"
    then putStrLn "A encerrar o compilador..."
    else if tipoFicheiro == "ERRO"
    then do
        putStrLn "Opção inválida! Tente novamente."
        main
    else do
        putStrLn $ "\nA ler os ficheiros de teste do tipo: " ++ tipoFicheiro ++ "..."
        putStrLn "-----------------------------------------"    
        putStrLn $ "Tipo de ficheiro selecionado: " ++ tipoFicheiro
        putStrLn "========================================="
        
        ficheiro <- if tipoFicheiro == "testes-corretos"
            then do
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
                putStrLn "12 - condicionalBooleana.pas"
                putStrLn " 0 - Sair"
                putStrLn "========================================="
                putStr "Opção: "
                hFlush stdout
                opcao2 <- getLine
                return $ case opcao2 of
                    "1"  -> "testes-certos/aritmetica.pas"
                    "2"  -> "testes-certos/boolean.pas"
                    "3"  -> "testes-certos/declaracoes.pas"
                    "4"  -> "testes-certos/colisaoPalavrasReservadas.pas"
                    "5"  -> "testes-certos/condicional.pas"
                    "6"  -> "testes-certos/loops.pas"
                    "7"  -> "testes-certos/maiusculas.pas"
                    "8"  -> "testes-certos/literais.pas"
                    "9"  -> "testes-certos/stress.pas"
                    "10" -> "testes-certos/operadores.pas"
                    "11" -> "testes-certos/IO.pas"
                    "12" -> "testes-certos/condicionalBooleana.pas"
                    "0"  -> "SAIR"
                    _    -> "ERRO"
            else do
                putStrLn "Escolha o ficheiro de teste para compilar:"
                putStrLn " 1 - erro-condicionalEmFalta.pas"
                putStrLn " 2 - erro-tipoIncompativel.pas"
                putStrLn " 3 - erro-pontoVirgula.pas"
                putStrLn " 4 - erro-loopFaltaDo.pas"
                putStrLn " 5 - erro-malFormada.pas"
                putStrLn " 6 - erro-terminoAntecipado.pas"
                putStrLn " 7 - erro-condicionalIncompativel.pas"
                putStrLn " 8 - erro-loopIncompativel.pas"
                putStrLn " 0 - Sair"
                putStrLn "========================================="
                putStr "Opção: "
                hFlush stdout
                opcao2 <- getLine
                return $ case opcao2 of
                    "1" -> "testes-errados/erro-condicionalEmFalta.pas"
                    "2" -> "testes-errados/erro-tipoIncompativeis.pas"
                    "3" -> "testes-errados/erro-pontoVirgula.pas"
                    "4" -> "testes-errados/erro-loopFaltaDo.pas"
                    "5" -> "testes-errados/erro-malFormado.pas"
                    "6" -> "testes-errados/erro-terminoAntecipado.pas"
                    "7" -> "testes-errados/erro-condicionalIncompativel.pas"
                    "8" -> "testes-errados/erro-loopIncompativel.pas"
                    "0" -> "SAIR"
                    _   -> "ERRO"
                    
        if ficheiro == "SAIR"
        then putStrLn "A voltando..."
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
            
            putStrLn "\nPressione ENTER para voltar ao menu principal..."
            _ <- getLine
            main
                





