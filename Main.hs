module Main where

import Lexer (alexScanTokens)
import Parser (parse)
import VisualPrint (visualPrintAST)
import System.IO (hFlush, stdout)
import Control.Exception (catch, ErrorCall, evaluate)

-- Menu interativo principal
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
    
    option1 <- getLine
    let fileType = case option1 of
            "1" -> "testes-corretos"
            "2" -> "testes-errados"
            "0" -> "SAIR"
            _   -> "ERRO"

    if fileType == "SAIR"
    then putStrLn "A encerrar o compilador..."
    else if fileType == "ERRO"
    then do
        putStrLn "Opção inválida! Tente novamente."
        main
    else do
        putStrLn $ "\nA ler os ficheiros de teste do tipo: " ++ fileType ++ "..."
        putStrLn "-----------------------------------------"    
        putStrLn $ "Tipo de ficheiro selecionado: " ++ fileType
        putStrLn "========================================="
        
        file <- if fileType == "testes-corretos"
            then do
                putStrLn "Escolha o ficheiro de teste para compilar:"
                putStrLn " 1 - corretoAritmetica.pas"
                putStrLn " 2 - corretoBooleanos.pas"
                putStrLn " 3 - corretoDeclaracoes.pas"
                putStrLn " 4 - corretoPalavrasReservadas.pas"
                putStrLn " 5 - corretoCondicional.pas"
                putStrLn " 6 - corretoLoops.pas"
                putStrLn " 7 - corretoMaiusculas.pas"
                putStrLn " 8 - corretoLiterais.pas"
                putStrLn " 9 - corretoStress.pas"
                putStrLn "10 - corretoOperadores.pas"
                putStrLn "11 - corretoIO.pas"
                putStrLn "12 - corretoCondicionalComparacao.pas"
                putStrLn " 0 - Sair"
                putStrLn "========================================="
                putStr "Opção: "
                hFlush stdout
                option2 <- getLine
                return $ case option2 of
                    "1"  -> "testes-certos/corretoAritmetica.pas"
                    "2"  -> "testes-certos/corretoBooleanos.pas"
                    "3"  -> "testes-certos/corretoDeclaracoes.pas"
                    "4"  -> "testes-certos/corretoPalavrasReservadas.pas"
                    "5"  -> "testes-certos/corretoCondicional.pas"
                    "6"  -> "testes-certos/corretoLoops.pas"
                    "7"  -> "testes-certos/corretoMaiusculas.pas"
                    "8"  -> "testes-certos/corretoLiterais.pas"
                    "9"  -> "testes-certos/corretoStress.pas"
                    "10" -> "testes-certos/corretoOperadores.pas"
                    "11" -> "testes-certos/corretoIO.pas"
                    "12" -> "testes-certos/corretoCondicionalComparacao.pas"
                    "0"  -> "SAIR"
                    _    -> "ERRO"
            else do
                putStrLn "Escolha o ficheiro de teste para compilar:"
                putStrLn " 1 - erroCondicionalFaltaThen.pas"
                putStrLn " 2 - erroTiposIncompativeis.pas"
                putStrLn " 3 - erroPontoVirgulaAntesElse.pas"
                putStrLn " 4 - erroLoopFaltaDo.pas"
                putStrLn " 5 - erroExpressaoMalFormada.pas"
                putStrLn " 6 - erroCodigoAposEnd.pas"
                putStrLn " 7 - erroCondicionalIncompativel.pas"
                putStrLn " 8 - erroLoopNaoBooleano.pas"
                putStrLn " 0 - Sair"
                putStrLn "========================================="
                putStr "Opção: "
                hFlush stdout
                option2 <- getLine
                return $ case option2 of
                    "1" -> "testes-errados/erroCondicionalFaltaThen.pas"
                    "2" -> "testes-errados/erroTiposIncompativeis.pas"
                    "3" -> "testes-errados/erroPontoVirgulaAntesElse.pas"
                    "4" -> "testes-errados/erroLoopFaltaDo.pas"
                    "5" -> "testes-errados/erroExpressaoMalFormada.pas"
                    "6" -> "testes-errados/erroCodigoAposEnd.pas"
                    "7" -> "testes-errados/erroCondicionalIncompativel.pas"
                    "8" -> "testes-errados/erroLoopNaoBooleano.pas"
                    "0" -> "SAIR"
                    _   -> "ERRO"
                    
        if file == "SAIR"
        then putStrLn "A voltar..."
        else if file == "ERRO"
        then do
            putStrLn "Opção inválida! Tente novamente."
            main
        else do
            putStrLn $ "\nA ler o ficheiro: " ++ file ++ "..."
            sourceCode <- readFile file
            
            --Execução do Lexer, Parser e impressão da AST (com captura de erros)
            catch (do
                let tokens = alexScanTokens sourceCode
                let ast = parse tokens
                let tree = visualPrintAST ast
                _ <- evaluate (length tree)
                putStrLn "\n--- ARVORE SINTATICA (AST) ---"
                putStrLn tree
              ) (\err -> putStrLn $ "\n[ERRO DETETADO] " ++ show (err :: ErrorCall))
            
            putStrLn "\nPressione ENTER para voltar ao menu principal..."
            _ <- getLine
            main
