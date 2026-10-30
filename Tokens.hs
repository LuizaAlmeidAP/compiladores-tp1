data Token = ID String       -- e.g. xy123
            |INT  Int         -- e.g. 123
            |REAL Float      -- e.g. 123.45
            |CHAR Char        -- e.g. 'a'
            |PLUS              -- +
            |MINUS             -- -
            |MULT              -- *
            |DIV               -- /
            |EQUAL            -- =
            |NEQUAL           -- <>
            |LTHAN          -- <
            |LEQUAL         -- <=
            |GTHAN       -- >
            |GEQUAL      -- >=
            |WRITE          -- write
            |READ           -- read
            |LPAREN          -- (
            |RPAREN          -- )
            |COMMA           -- ,
            |SEMICOLON       -- ;
            |COLON           -- :
            |ASSIGN           -- :=
            |VAR              -- var
            |CONST            -- const
            |PROGRAM           -- program
            |BEGIN             -- begin
            |END                -- end
            |MOD                -- mod
            |AND                -- and
            |FOR                -- for
            |RECORD         -- record
            |IF                -- if
            |THEN              -- then
            |ELSE              -- else
            |TYPE              -- type
            |WHILE             -- while
            |DO                -- do
            deriving (Eq,Show)