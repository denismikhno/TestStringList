unit CityListModelFake;

interface

uses
  System.Classes, CityListInterface;

///////////////////////////////////////////////////////////////////////////////

type
  TCityListModelFake = class(TInterfacedObject, ICityList)
  private
    FOutList: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    procedure CreateCityList;
    procedure SortCityList;
    function OutCityList: TStringList;
  end;

///////////////////////////////////////////////////////////////////////////////

implementation

constructor TCityListModelFake.Create;
begin
  inherited Create;
  FOutList := TStringList.Create;
end;

destructor TCityListModelFake.Destroy;
begin
  FOutList.Free;
  inherited Destroy;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TCityListModelFake.CreateCityList;
begin
    // ничего не делаем
end;

///////////////////////////////////////////////////////////////////////////////

procedure TCityListModelFake.SortCityList;
begin
    // ничего не делаем
end;

///////////////////////////////////////////////////////////////////////////////

function TCityListModelFake.OutCityList: TStringList;
begin
  FOutList.Clear;
  FOutList.Add('1: Фейковый город');
  FOutList.Add('2: Фейковый город');
  FOutList.Add('3: Фейковый город');
  FOutList.Add('4: Фейковый город');
  FOutList.Add('5: Фейковый город');
  Result := FOutList;
end;

///////////////////////////////////////////////////////////////////////////////

end.
