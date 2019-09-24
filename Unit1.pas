unit Unit1;

interface
 uses
 Unit2;
type
  IClassA = interface
  procedure Add(a : Integer);
  end;

  TClassA = class(TInterfacedObject, IClassA)
  private
    FObj: TObject;
    BObj : IClassB;
  public
    constructor Create(dummy: TObject);
    procedure Add(a: Integer);
    destructor Destroy; override;
  end;


  implementation

constructor TClassA.Create(dummy: TObject);
begin
  inherited Create;
  BObj := TClassB.Create();
  FObj := TObject.Create();
end;

procedure TClassA.Add(a: Integer);
begin
  BObj.Add(a);
end;

destructor TClassA.Destroy;
begin
  if Assigned(FObj) then
    FObj := nil; {this object may not go away from memory.}
  inherited;
end;

end.
