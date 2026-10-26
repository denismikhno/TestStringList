program TestStringList;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm},
  CityListInterface in 'CityListInterface.pas',
  CityListModel in 'CityListModel.pas',
  CityListFactory in 'CityListFactory.pas',
  CityListModelFake in 'CityListModelFake.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
