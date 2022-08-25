unit ClassLogin;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniPanel, uniGUIBaseClasses, uniGroupBox,
  uniBasicGrid, uniDBGrid, Vcl.Imaging.pngimage, uniImage, uniPageControl,
  uniSplitter, uniBitBtn, uniSpeedButton, uniEdit, uniLabel, uniToolBar,
  Data.DB, uniDBText, uniDBEdit, uniScrollBox,
  uniMultiItem, uniComboBox, uniDBComboBox, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, uniMemo;

// Quando for usar injeção usando a class Helper, HABILITAR a Linha abaixo
  type
    TLogin = class // TAcoes = class Helper for TForm
    private

    public

      function ValidaUsuarioSenha(cUsuario,cSenha:String ) : boolean ;

  end;

// Quando for usar injeção usando a class Helper, DESABILITAR a Linha abaixo
//var
//   oLogin : TLogin ;

implementation

uses  UDmLogin, MainModule;

{ TLogin }

function TLogin.ValidaUsuarioSenha(cUsuario, cSenha: String): boolean;
Var vError:String;
begin

    try
    With DMLogin do
      Begin
          With QryLogin do
          begin
            Close ;
            Sql.Clear ;
            SQl.Add('SELECT *  FROM USUARIOS WHERE NOME = :NOME AND SENHA=:SENHA') ;
            ParamByName('NOME').AsString    := cUsuario ;
            ParamByName('SENHA').AsString   := cSenha ;
            Open;
            if QryLogin.IsEmpty  then
               Result := false
            Else
               Result := true ;
          End;
      End;
    Except
      on E: Exception do
         UniMainModule.Mensagem('Erro:' + E.Message , vError );

    end;

end;

end.
