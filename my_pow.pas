unit my_pow;

interface
function pow(a,m,n:int64):int64;

implementation

function pow(a,m,n:int64):int64;
Var
P,Ui,U:int64;
i, bi:word;
begin
P:=1;
U:=m;
Ui:=a mod n;
  for i:=0 to 31 do
  begin
  bi:= U and 1;
   U:=U shr 1;
   if bi=1 then
   begin
   P:=(P*Ui) mod n;
   end;
   Ui:=(Ui*Ui) mod n;
  end;
  pow:= P;
end;
end.
