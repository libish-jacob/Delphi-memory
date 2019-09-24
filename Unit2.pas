unit Unit2;

interface

type
  IClassB = interface
  procedure Add(a: Integer);
  end;

  TClassB = class(TInterfacedObject, IClassB)
  private
    FObj: TObject;
  public
    constructor Create();
    destructor Destroy; override;
    procedure Add(a: Integer);
  end;


  implementation

constructor TClassB.Create();
begin
  FObj := TObject.Create();
  inherited Create;
end;

destructor TClassB.Destroy;
begin
  if Assigned(FObj) then
    FObj := nil; {this object may not go away from memory.}
  inherited;
end;

procedure TClassB.Add(a: Integer);
begin

end;

end.
