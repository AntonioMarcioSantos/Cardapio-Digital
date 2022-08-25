unit UFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniMultiItem, uniComboBox,
  uniPanel, uniLabel, uniButton, uniBitBtn, uniEdit, uniGUIBaseClasses, uniImage,
  uniSweetAlert;

type
  TfLogin = class(TUniLoginForm)
    imgBG: TUniImage;
    pnLogin: TUniPanel;
    EdUsuario: TUniEdit;
    EdSenha: TUniEdit;
    UniBitBtn1: TUniBitBtn;
    lbkey: TUniLabel;
    UniComboBox1: TUniComboBox;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniSweetAlert1: TUniSweetAlert;
    procedure UniLoginFormBeforeShow(Sender: TObject);
    procedure UniLoginFormScreenResize(Sender: TObject; AWidth,
      AHeight: Integer);
    procedure UniBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fLogin: TfLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Main, ClassLogin;

function fLogin: TfLogin;
begin
  Result := TfLogin(UniMainModule.GetFormInstance(TfLogin));
end;

procedure TfLogin.UniBitBtn1Click(Sender: TObject);
var
   oLogin   : TLogin ;
begin

  try
    oLogin := TLogin.Create;
    if not ( oLogin.ValidaUsuarioSenha(EdUsuario.Text,EdSenha.Text) ) then
       Begin
          UniSweetAlert1.Show;
          EdUsuario.SetFocus ;
          ModalResult := mrNone;
          abort;
       End
    Else
       begin
         ModalResult := mrOK;
       end  ;
  finally
    oLogin.Free ;
  end;
end;

procedure TfLogin.UniLoginFormBeforeShow(Sender: TObject);
begin

  imgBG.Url := '/files/images/background/bg2.jpg';

end;

procedure TfLogin.UniLoginFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin

   pnLogin.BorderStyle  := ubsNone;
   pnLogin.Left         := Round((AWidth/ 2) - (pnLogin.Width / 2));
   pnLogin.Top          := Round((AHeight / 2) - (pnLogin.Height / 2));
   pnLogin.Update;

end;

initialization
  RegisterAppFormClass(TfLogin);

end.
