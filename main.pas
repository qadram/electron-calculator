unit main;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Electron, WEBLib.Dialogs, WEBLib.ExtCtrls, WEBLib.StdCtrls;

type
  TMainForm = class(TElectronForm)
    pnDisplay: TWebPanel;
    WebPanel1: TWebPanel;
    btnOperation: TWebButton;
    WebButton2: TWebButton;
    WebButton3: TWebButton;
    WebButton4: TWebButton;
    WebButton5: TWebButton;
    WebPanel2: TWebPanel;
    WebButton6: TWebButton;
    WebButton7: TWebButton;
    WebButton8: TWebButton;
    WebButton9: TWebButton;
    WebButton10: TWebButton;
    WebPanel3: TWebPanel;
    WebButton11: TWebButton;
    WebButton12: TWebButton;
    WebButton13: TWebButton;
    WebButton14: TWebButton;
    WebButton15: TWebButton;
    WebPanel4: TWebPanel;
    WebButton16: TWebButton;
    btnResult: TWebButton;
    lbDisplay: TWebLabel;
    procedure btnOperationClick(Sender: TObject);
    procedure btnResultClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btnResultClick(Sender: TObject);
var
  operation: string;
  operationresult: string;
begin
  operation := lbDisplay.Caption;
  asm
    operationresult = eval(operation);
  end;
  lbDisplay.Caption := Trim(operationresult+' ');
end;

procedure TMainForm.btnOperationClick(Sender: TObject);
begin
  if (lbDisplay.Caption='0') then
  begin
    lbDisplay.Caption:='';
  end;

  lbDisplay.Caption := lbDisplay.Caption + (Sender as TWebButton).Caption;
end;

initialization
  RegisterClass(TMainForm);

end.    