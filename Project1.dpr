program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {formRSA},
  MyRnd in 'MyRnd.pas',
  my_pow in 'my_pow.pas',
  my_gcd in 'my_gcd.pas',
  trans in 'trans.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformRSA, formRSA);
  Application.Run;
end.
