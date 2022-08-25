unit uAcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniURLFrame, unimURLFrame, uniMultiItem, unimList,
  uniLabel, unimLabel, uniScreenMask, uniEdit, unimEdit, uniButton, uniBitBtn,
  unimBitBtn, unimScrollBox, uniSweetAlert, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, unimComboBox;

type
  TFrmAcesso = class(TUnimLoginForm)
    ContainerPanelPrincipal: TUnimContainerPanel;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimBitBtn1: TUnimBitBtn;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimContainerPanel3: TUnimContainerPanel;
    EdNomeUsuario: TUnimEdit;
    UnimContainerPanel4: TUnimContainerPanel;
    UnimContainerPanel5: TUnimContainerPanel;
    UnimContainerPanel6: TUnimContainerPanel;
    UnimContainerPanel7: TUnimContainerPanel;
    UnimContainerPanel8: TUnimContainerPanel;
    UnimContainerPanel9: TUnimContainerPanel;
    UnimContainerPanel10: TUnimContainerPanel;
    UnimContainerPanel11: TUnimContainerPanel;
    UnimContainerPanel12: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    UnimContainerPanel13: TUnimContainerPanel;
    UnimContainerPanel14: TUnimContainerPanel;
    UnimLabel2: TUnimLabel;
    UnimScrollBox1: TUnimScrollBox;
    UniSweetAlert1: TUniSweetAlert;
    UnimContainerPanel15: TUnimContainerPanel;
    EdSenhausuario: TUnimEdit;
    UnimContainerPanel16: TUnimContainerPanel;
    UnimContainerPanel17: TUnimContainerPanel;
    UnimDBLookupComboBox1: TUnimDBLookupComboBox;
    procedure UnimLoginFormShow(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmAcesso: TFrmAcesso;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Mainm;

function FrmAcesso: TFrmAcesso;
begin
  Result := TFrmAcesso(UniMainModule.GetFormInstance(TFrmAcesso));
end;

procedure TFrmAcesso.UnimBitBtn1Click(Sender: TObject);
begin

  With UniMainModule do
     Begin
        FDQryUsuario.Close ;
        FDQryUsuario.ParamByName('NOME').AsString  :=  EdNomeUsuario.Text ;
        FDQryUsuario.ParamByName('SENHA').AsString :=  EdSenhaUsuario.Text ;
        FDQryUsuario.Open ;
        if FDQryUsuario.RecordCount = 0 then
           Begin
             UniSweetAlert1.Show;
             EdNomeUsuario.SetFocus ;
             Abort ;
           End;

        cUsuario := Copy(FDQryUsuarioNOME.AsString,1,10);
        nVendedor:= FDQryUsuarioID_VENDEDOR.Value ;
        Mainm.MainmForm.Show;
     End;
end;

procedure TFrmAcesso.UnimLoginFormShow(Sender: TObject);
var pathimg:string ;
begin
//    pathimg := 'bg2.jpg' ;
//    UniSession.AddJS('SetBackground("'+pathimg+'")');
end;

initialization
  RegisterAppFormClass(TFrmAcesso);

end.
