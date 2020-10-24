unit my_gcd;

interface

Function gcd(b,c:longint):longint;
Procedure gcd_ext(a, b : int64; var d, yz: int64);
function prm(p:longword):boolean;

var y, yy, ye:int64;

implementation
uses
  MyRnd, my_pow, Unit1, Dialogs, SysUtils;

Function gcd(b,c:longint):longint;
Var d, e:longint;
begin
  if b>c then
  begin
    e:=c;
    c:=b;
    b:=e;
  end;
  repeat
  begin
    d:=b mod c;
    b:=c;
    c:=d;
  end;
  until d=0;
  gcd:=b;
end;

Procedure gcd_ext(a, b : int64; var d, yz: int64);
var d1,y1 : int64;
Begin
  If b=0 Then
    Begin
      d:=1;
      yz:=0;
      Exit
    End;
  gcd_ext(b, a mod b, d1, y1);
  d := y1;
  yz := d1 - (a div b) * y1;
end;

function prm(p:longword):boolean;
var
  a: LongWord;
  i: Byte;
  QuantityChecks: LongWord;
begin
  if p = 2 then
  begin
    prm := True;
    Exit;
  end;

  if (p mod 2) = 0 then
  begin
    prm := False;
    Exit;
  end;

  QuantityChecks := 4;
  
  for i := 1 to QuantityChecks do
  begin
    MyRandomize;
    a := MyRandom(p);
    a := pow(a, (p - 1) div 2, p);

    if (a = 1) or (a = p - 1) then
      prm := True
    else
    begin
      prm := False;
      Exit;
    end;
  end;
end;

end.
