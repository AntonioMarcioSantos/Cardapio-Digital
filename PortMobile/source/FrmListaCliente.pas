unit FrmListaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniLabel, unimLabel, uniButton, unimButton, uniGUIBaseClasses, unimPanel,
  uniBasicGrid, uniDBGrid, unimDBListGrid, uniEdit, unimEdit, unimScrollBox,
  uniPanel, uniPageControl, unimTabPanel;

type
  TFrmListaClientes = class(TUnimForm)
    UnimPanel1: TUnimPanel;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimLabel1: TUnimLabel;
    TabClientes: TUnimTabPanel;
    TabListaClientes: TUnimTabSheet;
    UnimScrollBoxClientes: TUnimScrollBox;
    PnlListaClienteTop: TUnimContainerPanel;
    LblListaClientes: TUnimLabel;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimLabel3: TUnimLabel;
    UnimDBListGrid1: TUnimDBListGrid;
    UnimContainerPanel3: TUnimContainerPanel;
    EdBuscaListaClientes: TUnimEdit;
    UnimContainerPanel4: TUnimContainerPanel;
    BtBuscaListaClientes: TUnimButton;
    procedure UnimLabel1Click(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
    procedure BtBuscaListaClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmListaClientes: TFrmListaClientes;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmListaClientes: TFrmListaClientes;
begin
  Result := TFrmListaClientes(UniMainModule.GetFormInstance(TFrmListaClientes));
end;

procedure TFrmListaClientes.BtBuscaListaClientesClick(Sender: TObject);
begin
    With UniMainModule  do
    Begin
        FDQryClientes.Close;
        FDQryClientes.SQL.Clear ;
        FDQryClientes.SQL.Add('select * from clientes where  NOME LIKE :NOME order by NOME') ;
        FDQryClientes.ParamByName('NOME').AsString := '%'+UpperCase(EdBuscaListaClientes.Text)+'%' ;
        FDQryClientes.Open ;
    End;

end;

procedure TFrmListaClientes.UnimFormShow(Sender: TObject);
begin
  with TabListaClientes, JSInterface do
  begin
    JSCall('tab.hide', []);
  end;
  With UniMainModule  do
    Begin
        FDQryClientes.Close;
    End;

end;

procedure TFrmListaClientes.UnimLabel1Click(Sender: TObject);
begin
  close ;
end;

end.
