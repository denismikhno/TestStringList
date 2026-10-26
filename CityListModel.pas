unit CityListModel;

interface

uses
  System.Classes, System.SysUtils, CityListInterface;

///////////////////////////////////////////////////////////////////////////////

type
  TCityList = class(TInterfacedObject, ICityList)
  private
    FCityList, FOutCityList: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    procedure CreateCityList;
    procedure SortCityList;
    function OutCityList: TStringList;
  end;

///////////////////////////////////////////////////////////////////////////////

implementation

constructor TCityList.Create;
begin
  inherited Create;
  FCityList := TStringList.Create;
  FOutCityList := TStringList.Create;
end;

destructor TCityList.Destroy;
begin
  FCityList.Free;
  FOutCityList.Free;
  inherited Destroy;
end;

///////////////////////////////////////////////////////////////////////////////

procedure TCityList.CreateCityList;
begin
  FCityList.Clear;
  FCityList.Add('Киев');
  FCityList.Add('Москва');
  FCityList.Add('Минск');
  FCityList.Add('Тбилиси');
  FCityList.Add('Астана');
end;

///////////////////////////////////////////////////////////////////////////////

procedure TCityList.SortCityList;
begin
  FCityList.Sort;
end;

///////////////////////////////////////////////////////////////////////////////

function TCityList.OutCityList: TStringList;
var
  i: Integer;
begin
    FOutCityList.Clear;

    for i := 0 to FCityList.Count - 1 do
      FOutCityList.Add(IntToStr(i + 1) + ':  ' + FCityList[i]);

    Result := FOutCityList;
end;

///////////////////////////////////////////////////////////////////////////////

end.
