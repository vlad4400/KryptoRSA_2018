unit MyRnd;

interface
var
  GlobalRandSeed0, GlobalRandSeed1: LongWord;
  
procedure MyRandomize;
function MyRandom(max:int64): LongWord;

implementation

uses
  SysUtils, DateUtils;

procedure MyRandomize;
Var
  yy, mm, dd, hh, nn, ss, ms: word;
begin
  DecodeDateTime(now, yy, mm, dd, hh, nn, ss, ms);

  GlobalRandSeed0 := ms + hh*1000 + nn*100000 + dd*10000000 + ss*1000000000;
  GlobalRandSeed1 := ss + nn*100 + dd*10000 + hh*1000000 + ms*100000000;
end;

function MyRandom(max:int64): LongWord;
var
  R2: Int64;
begin
  R2 := GlobalRandSeed0 * GlobalRandSeed1;
  GlobalRandSeed0 := GlobalRandSeed1;
  GlobalRandSeed1 := (R2 shr 16);// and $FFFFFFFF;
  Result := GlobalRandSeed1 mod max;
end;

end.
 