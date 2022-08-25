unit FrmListaPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniLabel, unimLabel, uniButton, unimButton, uniGUIBaseClasses, unimPanel,
  uniPageControl, unimTabPanel, uniPanel, uniBasicGrid, uniDBGrid,
  unimDBListGrid, unimScrollBox, unimDBGrid;

type
  TFrmListaPedido = class(TUnimForm)
    UnimContainerPanel1: TUnimContainerPanel;
    TabListaPedido: TUnimTabPanel;
    TabListaPedidosAtendidos: TUnimTabSheet;
    UnimPanel1: TUnimPanel;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    UnimContainerPanel3: TUnimContainerPanel;
    TabListaitensPedidosAtendidos: TUnimTabSheet;
    UnimContainerPanel4: TUnimContainerPanel;
    UnimPanel2: TUnimPanel;
    UnimContainerPanel5: TUnimContainerPanel;
    UnimLabel2: TUnimLabel;
    UnimDBGrid1: TUnimDBGrid;
    UnimDBGrid2: TUnimDBGrid;
    UnimContainerPanel6: TUnimContainerPanel;
    UnimContainerPanel7: TUnimContainerPanel;
    UnimLabel3: TUnimLabel;
    UnimLabel4: TUnimLabel;
    procedure UnimLabel1Click(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
    procedure UnimContainerPanel2AjaxEvent(Sender: TComponent;
      EventName: string; Params: TUniStrings);
    procedure UnimLabel2Click(Sender: TObject);
    procedure UnimDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmListaPedido: TFrmListaPedido;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmListaPedido: TFrmListaPedido;
begin
  Result := TFrmListaPedido(UniMainModule.GetFormInstance(TFrmListaPedido));
end;

procedure TFrmListaPedido.UnimContainerPanel2AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
 TabListaPedido.ActivePageIndex := 2 ;
end;

procedure TFrmListaPedido.UnimDBGrid1DblClick(Sender: TObject);
begin
  UniMainModule.FDQryListaItensPedidos.Close ;
  UniMainModule.FDQryListaItensPedidos.ParamByName('PEDIDO').Value := UniMainModule.FDQryListaPedidosPEDIDO.Value ;
  UniMainModule.FDQryListaItensPedidos.open ;

   TabListaPedido.ActivePageIndex := 1 ;
end;

procedure TFrmListaPedido.UnimFormShow(Sender: TObject);
begin

  with TabListapedidosAtendidos, JSInterface do
  begin
    JSCall('tab.hide', []);
  end;
  with TabListaitensPedidosAtendidos, JSInterface do
  begin
    JSCall('tab.hide', []);
  end;

  UniMainModule.FDQryListaPedidos.Close ;
  UniMainModule.FDQryListaPedidos.Open ;
end;

procedure TFrmListaPedido.UnimLabel1Click(Sender: TObject);
begin
  close ;
end;

procedure TFrmListaPedido.UnimLabel2Click(Sender: TObject);
begin
 TabListaPedido.ActivePageIndex := 0 ;
end;

end.
