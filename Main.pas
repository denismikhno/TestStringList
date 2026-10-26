unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, CityListInterface, CityListFactory;

///////////////////////////////////////////////////////////////////////////////

type
  TMainForm = class(TForm)
    mmoCitiesList: TMemo;
    btnList: TButton;
    btnSort: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnListClick(Sender: TObject);
    procedure btnSortClick(Sender: TObject);
  private
    FCityList: ICityList;
  public
    { Public declarations }
  end;

///////////////////////////////////////////////////////////////////////////////

var
  MainForm: TMainForm;

///////////////////////////////////////////////////////////////////////////////

implementation

{$R *.dfm}

///////////////////////////////////////////////////////////////////////////////

procedure TMainForm.FormCreate(Sender: TObject);
begin
  FCityList := CreateCityList();
end;

///////////////////////////////////////////////////////////////////////////////

procedure TMainForm.btnListClick(Sender: TObject);
begin
    FCityList.CreateCityList;
    mmoCitiesList.Lines.Assign(FCityList.OutCityList);
end;

///////////////////////////////////////////////////////////////////////////////

procedure TMainForm.btnSortClick(Sender: TObject);
begin
  FCityList.SortCityList;
  mmoCitiesList.Lines.Assign(FCityList.OutCityList);
end;

///////////////////////////////////////////////////////////////////////////////

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  FCityList := nil;
end;

///////////////////////////////////////////////////////////////////////////////

end.
