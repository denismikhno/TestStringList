unit CityListInterface;

interface

uses
  System.Classes;

///////////////////////////////////////////////////////////////////////////////

type
  ICityList = interface
    ['{07652E31-7682-477F-A019-2478B8B1E6DE}']
    procedure CreateCityList;
    procedure SortCityList;
    function OutCityList: TStringList;
  end;

///////////////////////////////////////////////////////////////////////////////

implementation

end.
