unit FrmLancaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniLabel, unimLabel, uniGUIBaseClasses, unimPanel, uniButton, unimButton,
  uniImage, unimImage,  uniBitBtn, unimBitBtn, uniMemo,
  unimMemo, uniScreenMask, uniSweetAlert, uniGroupBox, unimEdit, uniEdit,
  unimSpinner;

type
  TFrmLancaProduto = class(TUnimForm)
    PnlBottom: TUnimPanel;
    LblBottom: TUnimLabel;
    UniSweetAlertQtde: TUniSweetAlert;
    lblDisplayProduto: TUnimLabel;
    UnimLabel1: TUnimLabel;
    EdQtde: TUnimSpinner;
    UnimLabel2: TUnimLabel;
    edUnid: TUnimEdit;
    BtPedir: TUnimButton;
    UniSweetAlertUN: TUniSweetAlert;
    procedure UnimLabel1Click(Sender: TObject);
    procedure BtPedirClick(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
    procedure EdQtdeEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmLancaProduto: TFrmLancaProduto;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmLancaProduto: TFrmLancaProduto;
begin
  Result := TFrmLancaProduto(UniMainModule.GetFormInstance(TFrmLancaProduto));
end;

procedure TFrmLancaProduto.BtPedirClick(Sender: TObject);
begin
  if EdQtde.Value <=0 then
     Begin
       UniSweetAlertQtde.Show ;
       abort ;
     End;
    if edUnid.Text = '' then
     Begin
       UniSweetAlertUN.Show ;
       abort ;
     End;


  With UniMainModule do
    Begin
       if cPedidoAberto = 'N' then
          Begin
             FDQryPedidos.open ;
             FDQryPedidos.Insert ;
            // FDQryPedidosPEDIDO.AsInteger       := -1 ;
             FDQryPedidosCLIENTE.AsInteger      := 999999 ;
             FDQryPedidosNOME_CLIENTE.AsString  := 'EM DIGITAÇÃO' ;
             FDQryPedidosSTATUS.AsString        := 'D' ;
             FDQryPedidosDATA_EMISSAO.AsDateTime:= now ;
             FDQryPedidosVENDEDOR.AsInteger     := nVendedor ;
             FDQryPedidosUSUARIO.AsString       := cUsuario  ;
             FDQryPedidos.Post ;

             nPedido       := FDQryPedidosPEDIDO.AsInteger  ;

             cPedidoAberto := 'S' ;

          End;

       FDQryItens.Open;
       FDQryItens.Insert ;
    //   FDQryitensID.AsInteger             := -1 ;
       FDQryItensPEDIDO.AsInteger         := nPedido ;
       FDQryItensCODIGO_PRODUTO.AsInteger := UniMainModule.FDQryProdutosCODIGO.Asinteger ;
       FDQryItensNOME_PRODUTO.Value       := Copy(UniMainModule.FDQryProdutosDESCRICAO.AsString,1,50) ;
       FDQryItensQUANTIDADE.AsInteger     := StrToInt(EdQtde.Text) ;
       FDQryItensUNID.AsString            := Copy(edUnid.Text,1,2) ;
       FDQryItens.Post;

       nQtdItens := nQtdItens + 1 ;

    End;


  close ;
end;

procedure TFrmLancaProduto.EdQtdeEnter(Sender: TObject);
begin
  EdQtde.SelectAll ;
end;

procedure TFrmLancaProduto.UnimFormShow(Sender: TObject);
begin

  lblDisplayProduto.Caption        := UniMainModule.FDQryProdutosDESCRICAO.AsString ;
//  MemoComposicaoProduto.Lines.Text := UniMainModule.FDQryProdutosCOMPOSICAO.AsString ;
//  try
//      ImgProduto.Picture.LoadFromFile(    UniMainModule.FDQryProdutosFOTO.AsString);
//  except
//  end;

  EdQtde.SetFocus ;
  EdQtde.SelectAll ;

end;

procedure TFrmLancaProduto.UnimLabel1Click(Sender: TObject);
begin
  close ;
end;

end.
