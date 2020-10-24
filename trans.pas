unit trans;

interface
uses Dialogs, SysUtils;

function TE(b: byte): word;
function TD(w: word): byte;

implementation

function TE(b: byte): word;
var
  x0, x1: byte;
  w: word;
begin
  x0 := b and $F;
  x1 := b shr 4;

  if(x0 >= 0) and (x0 < 10)
    then x0 := 48 + x0
  else
    x0 := 65 + x0 - 10;

  if(x1 >= 0) and (x1 < 10)
    then x1 := 48 + x1
  else
    x1 := 65 + x1 - 10;

  TE := (x1 shl 8) or x0;
end;

function TD(w: word): byte;
var
  x0, x1: byte;
begin
  x0 := w and $FF;
  x1 := w shr 8;

  if(x0 > 47) and (x0 < 58) then
    x0 := x0 - 48
  else
    x0 := x0 - 65 + 10;

  if(x1 > 47) and (x1 < 58) then
    x1 := x1 - 48
  else
    x1 := x1 - 65 + 10;

  //showmessage(inttostr(x0));
  //showmessage(inttostr(x1));

  TD := (x1 shl 4) or x0;
end;

end.
