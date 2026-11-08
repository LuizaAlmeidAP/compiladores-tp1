program TiposIncompativeis;
var
    x : integer;
    ativo : boolean;
begin
    x := 5;
    ativo := true;

    
    x := ativo + 6;


    if x = 'texto' then
        write(x);

    ativo := (x + 10) and false;   
    ativo := 100;
end.

