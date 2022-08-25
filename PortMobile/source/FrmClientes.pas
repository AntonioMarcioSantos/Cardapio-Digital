unit FrmClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniBasicGrid, uniDBGrid, unimDBListGrid, uniLabel, unimLabel, uniButton,
  unimButton, unimPanel, uniGUIBaseClasses, uniPageControl, unimTabPanel,
  uniPanel, uniEdit, unimEdit, unimScrollBox;

type
  TFrmCliente = class(TUnimForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmCliente: TFrmCliente;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Mainm;

function FrmCliente: TFrmCliente;
begin
  Result := TFrmCliente(UniMainModule.GetFormInstance(TFrmCliente));
end;

end.
