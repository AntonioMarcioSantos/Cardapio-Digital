unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, DB,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniBasicGrid, uniDBGrid, unimDBListGrid, uniGUIBaseClasses, unimPanel,
  uniLabel, unimLabel, uniPanel, uniPageControl, unimTabPanel, uniButton,
  unimButton, uniDBText, uniEdit, uniDBEdit, unimDBEdit, unimCarousel,
  unimSegmentedButton, unimScrollBox, uniBitBtn, unimBitBtn, uniScreenMask,
  uniSweetAlert, uniHTMLFrame, unimHTMLFrame, uniURLFrame, unimURLFrame,
  Vcl.Imaging.pngimage, uniImage, unimImage, uniMemo, unimMemo, uniGroupBox,
  unimEdit, uniMultiItem, uniComboBox, uniDBComboBox, unimComboBox,
  uniDBLookupComboBox, uniDateTimePicker, uniDBDateTimePicker, unimDBDatePicker,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TMainmForm = class(TUnimForm)
    UnimScrollBoxGeral: TUnimScrollBox;
    TabPai: TUnimTabPanel;
    TabGrupos: TUnimTabSheet;
    ListGrupos: TUnimDBListGrid;
    TabMarcas: TUnimTabSheet;
    ListMarcas: TUnimDBListGrid;
    PnlBottomBack: TUnimPanel;
    PnlExibeMarcas: TUnimPanel;
    lblGrupos: TUnimLabel;
    UnimURLFrame1: TUnimURLFrame;
    LblBackMarcaHome: TUnimLabel;
    PnlShop: TUnimContainerPanel;
    BtCarrinho: TUnimButton;
    TabProdutos: TUnimTabSheet;
    PnlExibeProdutos: TUnimPanel;
    ListProdutos: TUnimDBListGrid;
    PnlBottomBackMarcas: TUnimPanel;
    EdtBuscaProdutos: TUnimEdit;
    BtPesquisaProdutos: TUnimButton;
    UnimContainerPanel1: TUnimContainerPanel;
    LblBottom: TUnimLabel;
    BtCarroPedido: TUnimButton;
    TabItens: TUnimTabSheet;
    PnlItensPedido: TUnimPanel;
    ContainerBottomItens: TUnimContainerPanel;
    BtChamaTabFechamento: TUnimButton;
    LblBottomItens: TUnimLabel;
    ListItens: TUnimDBListGrid;
    TabClientes: TUnimTabSheet;
    PnlBottomFechamento: TUnimPanel;
    LblBottomFechamento: TUnimLabel;
    UnimScrollBox1: TUnimScrollBox;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimLabel2: TUnimLabel;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimLabel3: TUnimLabel;
    EdBuscaClientes: TUnimEdit;
    BtPesquisaClientes: TUnimButton;
    GridClientePedido: TUnimDBListGrid;
    TabFechamento: TUnimTabSheet;
    LblPedidoFechamento: TUnimLabel;
    UnimContainerPanel4: TUnimContainerPanel;
    PnlFechaPedido: TUnimPanel;
    LblFechaPedido: TUnimLabel;
    LblData: TUnimLabel;
    UnimContainerPanel5: TUnimContainerPanel;
    UnimScrollBoxFechamento: TUnimScrollBox;
    UnimContainerPanel6: TUnimContainerPanel;
    UnimContainerPanel7: TUnimContainerPanel;
    EdDataEmissao: TUnimDBDatePicker;
    LKLocalCobranca: TUnimDBLookupComboBox;
    UnimLabel5: TUnimLabel;
    UnimLabel6: TUnimLabel;
    LblNomeCliente: TUnimLabel;
    UnimContainerPanel8: TUnimContainerPanel;
    BtFecharPedido: TUnimButton;
    UnimPanel1: TUnimPanel;
    procedure ListGruposClick(Sender: TObject);
    procedure ListMarcasSelect(Sender: TObject);
    procedure LblBackMarcaHomeClick(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
    procedure UnimFormBeforeShow(Sender: TObject);
    procedure ListMarcasFieldImage(const Column: TunimDBListGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure ListMarcasClick(Sender: TObject);
    procedure ListProdutosAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure ListProdutosSelect(Sender: TObject);
    procedure BtPesquisaProdutosClick(Sender: TObject);
    procedure BtCarroPedidoClick(Sender: TObject);
    procedure LblBottomItensClick(Sender: TObject);
    procedure ListItensAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure LblBottomFechamentoClick(Sender: TObject);
    procedure BtChamaTabFechamentoClick(Sender: TObject);
    procedure BtPesquisaClientesClick(Sender: TObject);
    procedure GridClientePedidoDblClick(Sender: TObject);
    procedure LblFechaPedidoClick(Sender: TObject);
    procedure BtFecharPedidoClick(Sender: TObject);
    procedure LblBottomClick(Sender: TObject);
    procedure EdtBuscaProdutosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscaProdutos ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, FrmListaCliente,
  FrmListaPedidos, FrmLancaProdutos;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.GridClientePedidoDblClick(Sender: TObject);
begin
  TabPai.ActivePageIndex         := 5 ; // redireciona para a TabFechamento

  UniMainModule.nIdClientePedido := UniMainModule.FDQryClientesCODIGO.Value ;
  LblPedidoFechamento.Caption    := 'Pedido No.'+IntToStr(UniMainModule.nPedido) ;
  LblNomeCliente.Caption         := Copy(UniMainModule.FDQryClientesNOME.AsString,1,30);
  UniMainModule.FDQryLocalCobranca.First ;
 // UniMainModule.FDQryClientes.Open;
end;

procedure TMainmForm.UnimFormBeforeShow(Sender: TObject);
begin
  //UnimURLFrame1.Show ;
end;

procedure TMainmForm.UnimFormShow(Sender: TObject);
begin

  ListGrupos.SetFocus ;
  UniMainModule.FDQryGrupos.Open  ;

  TabPai.ActivePageIndex := 0 ;  // TabPai

  // Esquema para não exibir as Guias das Tabs
  with TabGrupos, JSInterface do
  begin
    JSCall('tab.hide', []);
  end;

  with TabMarcas, JSInterface do
  begin
    JSCall('tab.hide', []);
  end;

  with TabProdutos, JSInterface do
  begin
    JSCall('tab.hide', []);
  end;

  with TabItens, JSInterface do
  begin
    JSCall('tab.hide', []);
  end;

  with TabClientes, JSInterface do
  begin
    JSCall('tab.hide', []);
  end;

  with TabFechamento, JSInterface do
  begin
    JSCall('tab.hide', []);
  end;

end;

procedure TMainmForm.LblBackMarcaHomeClick(Sender: TObject);
begin
  UniMainModule.FDQryProdutos.Close ;

  lblGrupos.Caption      := '' ;
  TabPai.ActivePageIndex := 0 ;
end;

procedure TMainmForm.LblBottomClick(Sender: TObject);
begin
  UniMainModule.FDQryProdutos.Close ;

  lblGrupos.Caption      := '' ;
  TabPai.ActivePageIndex := 0 ; // voltando para a Tab Principal
end;

procedure TMainmForm.LblBottomFechamentoClick(Sender: TObject);
begin
  TabPai.ActivePageIndex := 3 ; // redireciona para a Tabitens
end;

procedure TMainmForm.LblBottomItensClick(Sender: TObject);
begin
  TabPai.ActivePageIndex := 2 ; // redireciona para a TabProdutos
end;

procedure TMainmForm.LblFechaPedidoClick(Sender: TObject);
begin
  TabPai.ActivePageIndex := 4 ; // redireciona para a TabClientes
end;

procedure TMainmForm.ListGruposClick(Sender: TObject);
begin

  Case uniMainModule.FDQryGruposID.Value of
      1:Begin  // Pedidos
          TabPai.ActivePageIndex := 2 ; // redireciona para a TabProdutos

          lblGrupos.Caption := UniMainModule.FDQryGruposNOME.AsString ;

          With UniMainModule  do
            Begin
                 case TabPai.ActivePageIndex of
                   1:Begin
                       FDQrySubGrupos.Close;
                       FDQrySubGrupos.ParamByName('ID_GRUPO').Value := FDQryGruposID.Value ;
                       FDQrySubGrupos.Open ;
                     End;
                   2:Begin
                       FDQryProdutos.Close;
                       FDQryProdutos.ParamByName('ID_GRUPO').Value  := 999 ; // FDQryGruposID.Value ;
                       FDQryProdutos.Open ;
                     End;
                 End;

            end;
      End;
      2:Begin  // Clientes
        FrmListaClientes.show ;
      End;
      3:Begin  // ListaPedidos
        FrmListaPedido.show ;
      End;


  end;



end;

procedure TMainmForm.ListItensAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if SameText(EventName, 'DeletaItens') then
  begin
    UniMainModule.nIdItemAtual := UniMainModule.FDQryItensID.Value ;
    MessageDlg('Confirma a Exclusão do Item ?',
        mtConfirmation,mbYesNo,procedure(Comp:TComponent; ARes: Integer)
        begin
          if Ares = mrYes then
          begin
             UniMainModule.FDQryItensID.DataSet.Delete ;
          end;
        end
      );
  end;
end;

procedure TMainmForm.BtCarroPedidoClick(Sender: TObject);
begin
  TabPai.ActivePageIndex := 3 ; // redireciona para a TabItens
end;

procedure TMainmForm.BtChamaTabFechamentoClick(Sender: TObject);
begin
  TabPai.ActivePageIndex := 4 ; // redireciona para a TabClientes
  UniMainModule.FDQryPedidos.Edit  ;
  UniMainModule.FDQryClientes.Open ;
 end;

procedure TMainmForm.BtFecharPedidoClick(Sender: TObject);
begin
        //UniMainModule.FDQryPedidos.POST ;



       UniMainModule.FDQryPedidos2.Close;
       UniMainModule.FDQryPedidos2.Params.ParamByName('PEDIDO').AsInteger := UniMainModule.nPedido ;
       UniMainModule.FDQryPedidos2.Open ;
       UniMainModule.FDQryPedidos2.Edit ;

       UniMainModule.FDQryPedidos2.FieldByName('CLIENTE').Value           := UniMainModule.nIdClientePedido ;
       UniMainModule.FDQryPedidos2.FieldByName('NOME_CLIENTE').Value      := Copy(LblNomeCliente.Caption,1,30) ;
       UniMainModule.FDQryPedidos2.FieldByName('DATA_EMISSAO').AsDateTime := EdDataEmissao.Date ;
       UniMainModule.FDQryPedidos2.FieldByName('VENDEDOR').Value          := UniMainModule.nVendedor ;
       UniMainModule.FDQryPedidos2.FieldByName('LOCAL_COBRANCA').Value    := UniMainModule.FDQryLocalCobrancaCODIGO.Value ;
       UniMainModule.FDQryPedidos2.FieldByName('USUARIO').AsString        := UniMainModule.cUsuario ;
       UniMainModule.FDQryPedidos2.FieldByName('STATUS').Value            := 'F' ;

       UniMainModule.FDQryPedidos2.FieldByName('VALOR_TOTAL').Value       := 0 ;
       UniMainModule.FDQryPedidos2.FieldByName('PERC_DESCONTO').Value     := 0 ;
       UniMainModule.FDQryPedidos2.FieldByName('VALOR_DESCONTO').Value    := 0 ;
       UniMainModule.FDQryPedidos2.FieldByName('VALOR_LIQUIDO').Value     := 0 ;

       UniMainModule.FDQryPedidos2.Post ;



        UniMainModule.cPedidoAberto    :='N' ;
        UniMainModule.nQtdItens        := 0 ;
        UniMainModule.nIdItemAtual     := 0 ;
        UniMainModule.nIdClientePedido := 0 ;
        UniMainModule.nPedido          := 0 ;

        ShowMessage('pedido Gravado com Sucesso!');


  TabPai.ActivePageIndex := 0 ; // redireciona para a TabClientes
end;

procedure TMainmForm.BtPesquisaClientesClick(Sender: TObject);
begin
    With UniMainModule  do
    Begin
        FDQryClientes.Close;
        FDQryClientes.SQL.Clear ;
        FDQryClientes.SQL.Add('select * from clientes where  NOME LIKE :NOME order by NOME') ;
        FDQryClientes.ParamByName('NOME').AsString := '%'+UpperCase(EdBuscaClientes.Text)+'%' ;
        FDQryClientes.Open ;
    End;
end;

procedure TMainmForm.BtPesquisaProdutosClick(Sender: TObject);
begin
  BuscaProdutos ;
end;

procedure TMainmForm.BuscaProdutos;
begin
    With UniMainModule  do
    Begin
        FDQryProdutos.Close;
        FDQryProdutos.SQL.Clear ;
        FDQryProdutos.SQL.Add('select * from produtos where id_grupo=:id_grupo and DESCRICAO LIKE :DESCRICAO order by DESCRICAO') ;
        FDQryProdutos.ParamByName('ID_GRUPO').Value     := FDQryGruposID.Value ;
        FDQryProdutos.ParamByName('DESCRICAO').AsString := UpperCase(EdtBuscaProdutos.Text)+'%' ;
        FDQryProdutos.Open ;
    End;
end;

procedure TMainmForm.EdtBuscaProdutosKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key=13 then
      BuscaProdutos ;
end;

procedure TMainmForm.ListMarcasClick(Sender: TObject);
begin
  TabPai.ActivePageIndex := 2 ;

  lblGrupos.Caption := UniMainModule.FDQryGruposNOME.AsString ;

  With UniMainModule  do
   Begin
     FDQryProdutos.Close;
     FDQryProdutos.ParamByName('ID_SUBGRUPO').Value := FDQrySubGruposID.Value ;
     FDQryProdutos.Open ;
   End;
end;

procedure TMainmForm.ListMarcasFieldImage(const Column: TunimDBListGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
begin

//  if SameText(AField.FieldName, 'FOTO') then
//  begin
//
//  //  DoNotDispose := True; // we provide an static image so do not free it.
//
//    UniImage1.Picture.LoadFromFile(UniMainModule.FDQryProdutosFOTO.AsString);
//    OutImage := UniImage1.Picture.Graphic  ;
//
//  end;



end;

procedure TMainmForm.ListMarcasSelect(Sender: TObject);
begin
  UniMainModule.FDQryProdutos.Close ;
  lblGrupos.Caption      := '' ;
  TabPai.ActivePageIndex := 0 ;
end;

procedure TMainmForm.ListProdutosAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if SameText(EventName, 'ExibeDetalhe') then
  begin
    PnlShop.Visible := true ;
    FrmLancaProduto.Show ;
  end;

end;

procedure TMainmForm.ListProdutosSelect(Sender: TObject);
begin
  UniMainModule.FDQryProdutos.Close ;
  lblGrupos.Caption      := '' ;
  TabPai.ActivePageIndex := 0 ;
end;

initialization
  RegisterAppFormClass(TMainmForm);

//  UniAddCSSLibrary('toasty/toasty.css', False, [upoFolderFiles, upoPlatformBoth]);
//  UniAddJSLibrary('toasty/toasty.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);

end.
