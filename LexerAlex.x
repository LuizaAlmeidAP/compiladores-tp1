{module Main where}

%wrapper "basic"

$white = [\ \t\n\r]
$alpha = [_a-zA-Z]
$digit = [0-9]

tokens :-
    --espaços e comentários
    $white+     ;
    "{" ~[\}]* "}"     ;

    --palavras reservadas e operadores de texto (div e mod por causa do
    --first match. se ficar na zona das operacos o lexer ia ler o div e mod como identificadores)
    if      {\_ -> IF}
    then    {\_ -> THEN}
    else    {\_ -> ELSE}
    while   {\_ -> WHILE}
    do      {\_ -> DO}
    read    {\_ -> READ}
    write   {\_ -> WRITE}
    program {\_ -> PROGRAM}
    begin   {\_ -> BEGIN}
    end     {\_ -> END}
    var     {\_ -> VAR}
    integer {\_ -> INTEGER}
    boolean {\_ -> BOOLEAN}
    and     {\_ -> AND}
    or      {\_ -> OR}
    not     {\_ -> NOT}
    true    {\_ -> TRUE}
    false   {\_ -> FALSE}
    div   {\_ -> DIV}
    mod   {\_ -> MOD}

    --identificadores
    $alpha($alpha|$digit)*      {\s -> ID s}

    --números
    $digit+     {\s -> INT (read s)}

    --símbolos
    --comparação
    "="     {\_ -> EQUAL}
    "<>"    {\_ -> NEQUAL}
    "<"     {\_ -> LTHAN}
    ">"     {\_ -> GTHAN}
    "<="    {\_ -> LEQUAL}
    ">="    {\_ -> GEQUAL}
    --aritméticos
    "+"     {\_ -> PLUS}
    "-"     {\_ -> MINUS}
    "*"     {\_ -> MULT}
    "/"     {\_ -> REALDIV}
    --pontuação
    ":="    {\_ -> ASSIGN}
    ";"     {\_ -> SEMICOLON}
    "."     {\_ -> PERIOD}
    ","     {\_ -> COMMA}
    "("     {\_ -> LPAREN}
    ")"     {\_ -> RPAREN}
    ":"     {\_ -> COLON}


{

data Token = ID String
            |INT Int
            |IF
            |THEN
            |ELSE
            |WHILE
            |DO
            |READ
            |WRITE
            |PROGRAM
            |BEGIN
            |END
            |VAR
            |INTEGER
            |BOOLEAN
            |AND
            |OR
            |NOT
            |TRUE
            |FALSE
            |EQUAL
            |NEQUAL
            |LTHAN
            |GTHAN
            |LEQUAL
            |GEQUAL
            |PLUS
            |MINUS
            |MULT
            |DIV
            |REALDIV
            |MOD
            |ASSIGN
            |SEMICOLON
            |PERIOD
            |COMMA
            |LPAREN
            |RPAREN
            |COLON
            deriving (Eq, Show)

main :: IO()
main = do
    txt <- getContents
    print(alexScanTokens txt)
}
