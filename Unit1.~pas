unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MyRnd, my_pow, my_gcd, trans, ExtCtrls;

type
  TformRSA = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    bequiv: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Button4: TButton;
    Button5: TButton;
    Edit8: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Button6: TButton;
    Label4: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Button2: TButton;
    Edit15: TEdit;
    Button7: TButton;
    generate_p: TButton;
    Button9: TButton;
    p_edit: TEdit;
    Edit17: TEdit;
    Button10: TButton;
    Button11: TButton;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    boxGenerator: TGroupBox;
    Edit16: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    boxSimplicity: TGroupBox;
    boxEvklid: TGroupBox;
    boxGcd: TGroupBox;
    boxRSA: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    boxConstructModule: TGroupBox;
    procedure Button1Click(Sender: TObject);
    procedure bequivClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure generate_pClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formRSA: TformRSA;
  max, a, m, n:LongWord;


implementation

{$R *.dfm}

procedure TformRSA.Button1Click(Sender: TObject);
begin
MyRandomize;
Edit6.Text:=IntToStr(GlobalRandSeed0);
Edit16.Text := IntToStr(GlobalRandSeed1);
end;

procedure TformRSA.bequivClick(Sender: TObject);
begin
a:=StrToInt(Edit2.Text);
m:=StrToInt(Edit3.Text);
n:=StrToInt(Edit4.Text);
Edit5.Text:=IntToStr(pow(a, m, n));
end;

procedure TformRSA.Button4Click(Sender: TObject);
begin
GlobalRandSeed0:=StrToInt64(Edit25.Text);
GlobalRandSeed1:= StrToInt64(Edit26.Text);
Edit6.Text := Edit25.Text;
Edit16.Text := Edit26.Text;
end;

procedure TformRSA.Button5Click(Sender: TObject);
begin
max:=StrToInt(Edit7.Text);
Edit1.Text:=IntToStr(MyRandom(max));
Edit6.Text:=IntToStr(GlobalRandSeed0);
Edit16.Text:=IntToStr(GlobalRandSeed1);
end;

procedure TformRSA.FormCreate(Sender: TObject);
begin
MyRandomize;
Edit6.Text:=IntToStr(GlobalRandSeed0);
Edit16.Text := IntToStr(GlobalRandSeed1);
end;

procedure TformRSA.Button6Click(Sender: TObject);
begin
Edit10.Text:=IntToStr(gcd(StrToInt(Edit8.Text), StrToInt(Edit9.Text)));
end;

procedure TformRSA.Button2Click(Sender: TObject);
Var m,nn,d,y : int64;
begin
  m := StrToInt(Edit11.Text);
  nn := StrToInt(Edit12.Text);
  //Evklid(m, nn);
  gcd_ext(m, nn, d, y);
  Edit13.Text:=IntToStr(abs(d));
  Edit14.Text:=IntToStr(abs(y));
end;

procedure TformRSA.Button7Click(Sender: TObject);
var p:longword;
begin
p:=StrToInt(Edit15.Text);
if prm(p) then Label1.Caption:='Simple (93.75%)'
else Label1.Caption:='No Simple';
end;


procedure TformRSA.generate_pClick(Sender: TObject);
var p:longword;
begin
  MyRandomize;
  repeat
  p:=MyRandom($80) or $50;
  if p mod 2 = 0 then p:= p + 1;
  until (strtoint(edit17.Text)<>p) and (prm(p)) and (gcd(strtoint(edit17.Text),p)=1);
  p_edit.Text:=inttostr(p);
end;

procedure TformRSA.Button9Click(Sender: TObject);
var q:longword;
begin
  repeat
  MyRandomize;
  q:=MyRandom($80) or $50;
  if q mod 2 = 0 then q:= q + 1;
  until ((strtoint(p_edit.Text)<>q) and (prm(q)) and (gcd(strtoint(p_edit.Text),q)=1));
  Edit17.Text:=inttostr(q);
end;

procedure TformRSA.Button10Click(Sender: TObject);  //генерация ключей
var p,q,n,fi,e,d,yx:int64;
begin
 p:=strtoint(p_edit.text);
 q:=strtoint(edit17.text);
 n:=p*q;
 edit18.text:=inttostr(n);
 fi:=(p-1)*(q-1);
 edit19.text:=inttostr(fi);
    repeat
      repeat
        e:=(MyRandom(fi));
      until (gcd(e,fi)=1) and prm(e);
      edit20.text:=inttostr(e);
      gcd_ext(e, fi, d, yx);
    until (prm(d) and (e <> d));
 edit21.text:=inttostr(abs(d));
end;


procedure TformRSA.Button11Click(Sender: TObject);      //сохранение ключей в файл
var kpub, ksec: file of word;
  nn,e,d: word;
  be, bd, bnn: array[0..1] of byte;
  we, wd, wnn: array[0..1] of word;
  i: byte;

begin
nn:=strtoint(edit18.text);
e:=strtoint(edit20.text);
d:=strtoint(edit21.text);

be[0] := e and $00FF;
be[1] := (e and $FF00) shr 8;

bd[0] := d and $00FF;
bd[1] := (d and $FF00) shr 8;

bnn[0] := nn and $00FF;
bnn[1] := (nn and $FF00) shr 8;

for i := 0 to 1 do
begin
  we[i] := TE(be[i]);
  wd[i] := TE(bd[i]);
  wnn[i] := TE(bnn[i]);
end;

assignfile(kpub,'kpub.txt');
rewrite(kpub,'kpub.txt');
write(kpub, we[1], we[0]);
write(kpub, wnn[1], wnn[0]);
closefile(kpub);

assignfile(ksec,'ksec.txt');
rewrite(ksec,'ksec.txt');
write(ksec, wd[1], wd[0]);
write(ksec, wnn[1], wnn[0]);
closefile(ksec);
end;

procedure TformRSA.Button12Click(Sender: TObject);
var x,e,n,d,zashifr,razshifr:int64;
begin
  x:=strtoint(edit22.text);
  e:=strtoint(edit20.text);
  n:=strtoint(edit18.text);
  d:=strtoint(edit21.text);

  zashifr:=pow(x,e,n);
  edit23.Text:=inttostr(zashifr);

  razshifr:=pow(zashifr,d,n);
  edit24.Text:=inttostr(razshifr);
end;

procedure TformRSA.Button13Click(Sender: TObject);
var
  {for keys}
  kpub: file of word;
  be, bnn: array[0..1] of byte;
  we, wnn: array[0..1] of word;
  e, nn: word;

  source, encrypted: file of byte;
  num: array[1..3] of byte;   //количество байтов для считывания из файла
  tmp1, tmp2: word;

  {for transport coding}
  arrb: array[0..3] of byte;
  arrw: array[0..3] of word;
  arrbb: array[0..7] of byte;
  i: byte;

  {to align the length of a file}
  fsize, quntblocks, fcounter: longword;
  adsize: byte;

  {for encoding of keys}
  superword: word;
  superbyte1, superbyte2: byte;

begin
  {read key}
  assignfile(kpub,'kpub.txt');
  Reset(kpub);

  read(kpub, we[1], we[0]);
  read(kpub, wnn[1], wnn[0]);

  CloseFile(kpub);

  for i := 0 to 1 do
  begin
    be[i] := TD(we[i]);
    bnn[i] := TD(wnn[i]);
  end;

  e := be[0];
  e := e or (be[1] shl 8);

  nn := bnn[0];
  nn := nn or (bnn[1] shl 8);

  {read text}
  assignfile(source, 'source.txt');
  assignfile(encrypted, 'encrypted.txt');

  Reset(source);
  ReWrite(encrypted);

  fsize := filesize(source);
  adsize := (3 - (fsize mod 3)) mod 3;
  quntblocks := fsize div 3;
  fcounter := 0;

  //showmessage(inttostr(fsize) + ' ' + inttostr(adsize) + ' ' + inttostr(quntblocks) + ' ' + inttostr(fcounter));

  superword := TE(adsize);
  superbyte1 := (superword and $FF00) shr 8;
  superbyte2 := superword and $FF;

  Write(encrypted, superbyte1, superbyte2);

  while not Eof(source) do
  begin
    //чтение битов из исходного файла
    if (quntblocks = fcounter) then
    begin
      MyRandomize;
      for i := 1 to 3 - adsize do
        read(source, num[i]);
      for i := 4 - adsize to adsize do
        num[i] := MyRandom(255);
    end
    else
      begin
        for i := 1 to 3 do
        begin
          read(source, num[i]);
          //showmessage(inttostr(num[i]));
        end;
      end;

    inc(fcounter);

    //разбиение на блоки по 12 битов
    tmp1:=num[2] shr 4;
    tmp1:=(num[1] shl 4) or tmp1;

    tmp2:=num[3];
    tmp2:=((num[2] and $F) shl 8) or tmp2;

    //шифрование
    //showmessage(inttostr(e) + ' ' + inttostr(nn));
    //showmessage('before ' + inttostr(tmp1) + ' ' + inttostr(tmp2));
    tmp1 := pow(tmp1, e, nn);
    tmp2 := pow(tmp2, e, nn);
    //showmessage('before ' + inttostr(tmp1) + ' ' + inttostr(tmp2));

    //подготовка для транспортного кодирования
    arrb[0] := (tmp1 and $FF00) shr 8;
    arrb[1] := (tmp1 and $00FF);

    arrb[2] := (tmp2 and $FF00) shr 8;
    arrb[3] := tmp2 and $00FF;

    //Транспортное кодирование
    for i := 0 to 3 do
      arrw[i] := TE(arrb[i]);

    arrbb[0] := (arrw[0] and $FF00) shr 8;
    arrbb[1] := arrw[0] and $00FF;
    arrbb[2] := (arrw[1] and $FF00) shr 8;
    arrbb[3] := arrw[1] and $00FF;
    arrbb[4] := (arrw[2] and $FF00) shr 8;
    arrbb[5] := arrw[2] and $00FF;
    arrbb[6] := (arrw[3] and $FF00) shr 8;
    arrbb[7] := arrw[3] and $00FF;

    for i := 0 to 7 do
      write(encrypted, arrbb[i]);

  end;

  closefile(source);
  closefile(encrypted);
end;

procedure TformRSA.Button14Click(Sender: TObject);
var
  {for keys}
  ksec: file of word;
  bd, bnn: array[0..1] of byte;
  wd, wnn: array[0..1] of word;
  d, nn: word;

  encrypted, decrypted: file of byte;
  num: array[1..3] of byte;   //количество байтов для записи в файла
  tmp1, tmp2: word;

  arrb: array[0..3] of byte;
  arrw: array[0..3] of word;
  arrbb: array[0..7] of byte;
  i: byte;

  {to align the length of a file}
  fsize, quntblocks, fcounter: longword;
  adsize: byte;

  {for encoding of keys}
  superword: word;
  superbyte1: byte;
  superbyte2: byte;
begin
  {read key}
  assignfile(ksec,'ksec.txt');
  Reset(ksec);

  read(ksec, wd[1], wd[0]);
  read(ksec, wnn[1], wnn[0]);

  CloseFile(ksec);

  for i := 0 to 1 do
  begin
    bd[i] := TD(wd[i]);
    bnn[i] := TD(wnn[i]);
  end;

  d := bd[0];
  d := d or (bd[1] shl 8);

  nn := bnn[0];
  nn := nn or (bnn[1] shl 8);

  {read text}
  assignfile(encrypted, 'encrypted.txt');
  assignfile(decrypted, 'decrypted.txt');
  Reset(encrypted);
  ReWrite(decrypted);

  read(encrypted, superbyte1, superbyte2);

  superword := ((superbyte1 and $FF) shl 8) or (superbyte2 and $FF);

  adsize := TD(superword);

  //fsize, quntblocks, fcounter: longword;
  fsize := FileSize(encrypted);
  quntblocks := (fsize div 8) - 1;
  fcounter := 0;

  //showmessage(inttostr(adsize) + ' ' + inttostr(fsize) + ' ' + inttostr(quntblocks) + ' ' + inttostr(fcounter));

  while not Eof(encrypted) do
  begin
    for i := 0 to 7 do
      read(encrypted, arrbb[i]);

    arrw[0] := arrbb[0];
    arrw[1] := arrbb[2];
    arrw[2] := arrbb[4];
    arrw[3] := arrbb[6];

    arrw[0] := (arrw[0] shl 8) or arrbb[1];
    arrw[1] := (arrw[1] shl 8) or arrbb[3];
    arrw[2] := (arrw[2] shl 8) or arrbb[5];
    arrw[3] := (arrw[3] shl 8) or arrbb[7];

    for i := 0 to 3 do
      arrb[i] := TD(arrw[i]);

    tmp1 := arrb[0] shl 8;
    tmp1 := tmp1 or arrb[1];

    tmp2 := arrb[2] shl 8;
    tmp2 := tmp2 or arrb[3];

    //showmessage(inttostr(d) + ' ' + inttostr(nn));

    //дешифрование
    tmp1 := pow(tmp1, d, nn);
    tmp2 := pow(tmp2, d, nn);

    num[1] := (tmp1 shr 4) and $FF;
    num[2] := ((tmp1 shl 4) and $F0) or ((tmp2 shr 8) and $0F);
    num[3] := tmp2 and $FF;

    //запись блоков в исходный файл
    if (quntblocks = fcounter) then
    begin
      for i := 1 to 3 - adsize do
        write(decrypted, num[i]);
    end
    else
      begin
        for i := 1 to 3 do
        begin
          write(decrypted, num[i]);
        end;
      end;

    inc(fcounter);
  end;

  closefile(encrypted);
  closefile(decrypted);
end;

end.
