program ElectronCalculator;

{$R *.dres}

uses
  Vcl.Forms,
  WEBLib.Forms,
  main in 'main.pas' {MainForm: TElectronForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.AutoFormRoute := True;
  Application.MainFormOnTaskbar := True;
  if not Application.NeedsFormRouting then
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
