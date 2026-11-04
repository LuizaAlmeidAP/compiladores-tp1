{
module Lexer where
}


%wrapper "basic"

$white = [\ \t\n\r]
$alpha = [_a-zA-Z]
$digit = [0-9]

@id     = $alpha($alpha|$digit)*

--Macros por causa da sintaxe case insensitive
@if     = [iI][fF]
@then   = [tT][hH][eE][nN]
@else   = [eE][lL][sS][eE]
@while  = [wW][hH][iI][lL][eE]
@do      = [dD][oO]
@read    = [rR][eE][aA][dD]
@write   = [wW][rR][iI][tT][eE]
@program = [pP][rR][oO][gG][rR][aA][mM]
@begin   = [bB][eE][gG][iI][nN]
@end     = [eE][nN][dD]
@var     = [vV][aA][rR]
@integer = [iI][nN][tT][eE][gG][eE][rR]
@boolean = [bB][oO][oO][lL][eE][aA][nN]
@real    = [rR][eE][aA][lL]
@string  = [sS][tT][rR][iI][nN][gG]
@and     = [aA][nN][dD]
@or      = [oO][rR]
@not     = [nN][oO][tT]
@true    = [tT][rR][uU][eE]
@false   = [fF][aA][lL][sS][eE]
@div     = [dD][iI][vV]
@mod     = [mM][oO][dD]

$any       = [.\n\r]
$notbrace = $any # [\}] --tudo que não é o '}' (para comentários)

tokens :-
    --espaços e comentários
    $white+     ;
    "{" $notbrace* "}"     ;

    --palavras reservadas e operadores de texto (div e mod por causa do
    --first match. se ficar na zona das operacos o lexer ia ler o div e mod como identificadores)
    @if         {\_ -> TkIf}
    @then       {\_ -> TkThen}
    @else       {\_ -> TkElse}
    @while      {\_ -> TkWhile}
    @do         {\_ -> TkDo}
    @read       {\_ -> TkRead}
    @write      {\_ -> TkWrite}
    @program    {\_ -> TkProgram}
    @begin      {\_ -> TkBegin}
    @end        {\_ -> TkEnd}
    @var        {\_ -> TkVar}
    @integer    {\_ -> TkTypeInteger}
    @boolean    {\_ -> TkTypeBoolean}
    @real       {\_ -> TkTypeReal}
    @string     {\_ -> TkTypeString}
    @and        {\_ -> TkAnd}
    @or         {\_ -> TkOr}
    @not        {\_ -> TkNot}
    @true       {\_ -> TkTrue}
    @false      {\_ -> TkFalse}
    @div        {\_ -> TkDiv}
    @mod        {\_ -> TkMod}

    --strings
    \" [^\"]* \" {\s -> TkString (init (tail s))}
    \' [^\']* \' {\s -> TkString (init (tail s))}

    --identificadores
    @id      {\s -> TkId s}

    --números
    $digit+     {\s -> TkInt (read s)}
    $digit+\.$digit+    {\s -> TkReal (read s)}

    --símbolos
    --comparação
    "="     {\_ -> TkEqual}
    "<>"    {\_ -> TkNequal}
    "<"     {\_ -> TkLthan}
    ">"     {\_ -> TkGthan}
    "<="    {\_ -> TkLequal}
    ">="    {\_ -> TkGequal}
    --aritméticos
    "+"     {\_ -> TkPlus}
    "-"     {\_ -> TkMinus}
    "*"     {\_ -> TkMult}
    "/"     {\_ -> TkRealDiv}
    --pontuação
    ":="    {\_ -> TkAssign}
    ";"     {\_ -> TkSemicolon}
    "."     {\_ -> TkPeriod}
    ","     {\_ -> TkComma}
    "("     {\_ -> TkLparen}
    ")"     {\_ -> TkRparen}
    ":"     {\_ -> TkColon}


{

data Token = TkId String
           | TkInt Int
           | TkReal Float
           | TkString String
           --palavras reservadas
           | TkIf
           | TkThen
           | TkElse
           | TkWhile
           | TkDo
           | TkRead
           | TkWrite
           | TkProgram
           | TkBegin
           | TkEnd
           | TkVar
           --palavras reservadas -> tipos de dados
           | TkTypeInteger
           | TkTypeBoolean
           | TkTypeReal
           | TkTypeString
           --palavras reservadas -> aritmetica e logica booleana
           | TkAnd
           | TkOr
           | TkNot
           | TkTrue
           | TkFalse
           | TkEqual
           | TkNequal
           | TkLthan
           | TkGthan
           | TkLequal
           | TkGequal
           | TkPlus
           | TkMinus
           | TkMult
           | TkDiv
           | TkRealDiv
           | TkMod
           --pontuacao
           | TkAssign
           | TkSemicolon
           | TkPeriod
           | TkComma
           | TkLparen
           | TkRparen
           | TkColon
           deriving (Eq, Show)


}