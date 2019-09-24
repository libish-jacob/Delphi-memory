program MemoryManagement;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Unit1 in 'Unit1.pas',
  Unit2 in 'Unit2.pas';

var ob : IClassA;
begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    while(true) do
    begin
    ob := TClassA.Create(nil);
    ob.Add(1);
    Sleep(2000);
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
