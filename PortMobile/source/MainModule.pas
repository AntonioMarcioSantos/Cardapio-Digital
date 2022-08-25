unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, MemDS, DBAccess, Uni,
  UniProvider, MySQLUniProvider, InterBaseUniProvider, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Error, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  FireDAC.Comp.UI;

type
  TUniMainModule = class(TUniGUIMainModule)
    dsGrupos: TDataSource;
    FDCon: TFDConnection;
    FDQryGrupos: TFDQuery;
    FDQryGruposID: TIntegerField;
    FDQryGruposNOME: TStringField;
    FDQryGruposDESCRICAO: TStringField;
    FDQryGruposFOTO: TStringField;
    FDQryProdutos: TFDQuery;
    FDQryProdutosFOTO: TStringField;
    dsProdutos: TDataSource;
    FDQrySubGrupos: TFDQuery;
    dsSubGrupos: TDataSource;
    FDQryProdutosID: TIntegerField;
    FDQryProdutosID_SUBGRUPO: TIntegerField;
    FDQryProdutosCODIGO: TIntegerField;
    FDQryProdutosDESCRICAO: TStringField;
    FDQryProdutosCOMPOSICAO: TStringField;
    FDQrySubGruposID: TIntegerField;
    FDQrySubGruposID_GRUPO: TIntegerField;
    FDQrySubGruposCODIGO: TIntegerField;
    FDQrySubGruposDESCRICAO: TStringField;
    FDQrySubGruposCOMPOSICAO: TStringField;
    FDQrySubGruposFOTO: TStringField;
    FDQryProdutosID_GRUPO: TIntegerField;
    FDQryProdutosVALOR: TBCDField;
    FDQryPedidos: TFDQuery;
    FDQryItens: TFDQuery;
    FDQryPedidosPEDIDO: TIntegerField;
    FDQryPedidosCLIENTE: TIntegerField;
    FDQryPedidosNOME_CLIENTE: TStringField;
    FDQryPedidosDATA_EMISSAO: TDateField;
    FDQryPedidosVENDEDOR: TIntegerField;
    FDQryPedidosLOCAL_COBRANCA: TIntegerField;
    FDQryPedidosUSUARIO: TStringField;
    FDQryPedidosEMBARQUE: TStringField;
    FDQryPedidosSTATUS: TStringField;
    FDQryItensPEDIDO: TIntegerField;
    FDQryItensCODIGO_PRODUTO: TIntegerField;
    FDQryItensNOME_PRODUTO: TStringField;
    FDQryItensQUANTIDADE: TBCDField;
    FDQryItensUNID: TStringField;
    dsPedidos: TDataSource;
    dsItens: TDataSource;
    FDQryItensID: TIntegerField;
    FDQryClientes: TFDQuery;
    dsClientes: TDataSource;
    FDQryClientesCODIGO: TIntegerField;
    FDQryClientesNOME: TStringField;
    dsLocalCobranca: TDataSource;
    UniCon: TUniConnection;
    FDQryPedidos2: TUniQuery;
    FDQryPedidos2PEDIDO: TIntegerField;
    FDQryPedidos2CLIENTE: TIntegerField;
    FDQryPedidos2NOME_CLIENTE: TStringField;
    FDQryPedidos2DATA_EMISSAO: TDateField;
    FDQryPedidos2VENDEDOR: TIntegerField;
    FDQryPedidos2LOCAL_COBRANCA: TIntegerField;
    FDQryPedidos2VALOR_TOTAL: TFloatField;
    FDQryPedidos2PERC_DESCONTO: TFloatField;
    FDQryPedidos2VALOR_DESCONTO: TFloatField;
    FDQryPedidos2VALOR_LIQUIDO: TFloatField;
    FDQryPedidos2HORA: TStringField;
    FDQryPedidos2MAQUINA: TIntegerField;
    FDQryPedidos2USUARIO: TStringField;
    FDQryPedidos2QTD_DIAS: TIntegerField;
    FDQryPedidos2EMBARQUE: TStringField;
    FDQryPedidos2COD_MOTORISTA: TIntegerField;
    FDQryPedidos2MOTORISTA: TStringField;
    FDQryPedidos2STATUS: TStringField;
    FDQryLocalCobranca: TUniQuery;
    FDQryLocalCobrancaCODIGO: TIntegerField;
    FDQryLocalCobrancaNOME: TStringField;
    FDQryListaPedidos: TUniQuery;
    FDQryListaPedidosPEDIDO: TIntegerField;
    FDQryListaPedidosCLIENTE: TIntegerField;
    FDQryListaPedidosNOME_CLIENTE: TStringField;
    FDQryListaPedidosDATA_EMISSAO: TDateField;
    FDQryListaPedidosVENDEDOR: TIntegerField;
    FDQryListaPedidosLOCAL_COBRANCA: TIntegerField;
    FDQryListaPedidosVALOR_TOTAL: TFloatField;
    FDQryListaPedidosPERC_DESCONTO: TFloatField;
    FDQryListaPedidosVALOR_DESCONTO: TFloatField;
    FDQryListaPedidosVALOR_LIQUIDO: TFloatField;
    FDQryListaPedidosHORA: TStringField;
    FDQryListaPedidosMAQUINA: TIntegerField;
    FDQryListaPedidosUSUARIO: TStringField;
    FDQryListaPedidosQTD_DIAS: TIntegerField;
    FDQryListaPedidosEMBARQUE: TStringField;
    FDQryListaPedidosCOD_MOTORISTA: TIntegerField;
    FDQryListaPedidosMOTORISTA: TStringField;
    FDQryListaPedidosSTATUS: TStringField;
    dsListaPedidos: TDataSource;
    FDQryListaItensPedidos: TUniQuery;
    FDQryListaItensPedidosID: TIntegerField;
    FDQryListaItensPedidosPEDIDO: TIntegerField;
    FDQryListaItensPedidosCODIGO_PRODUTO: TIntegerField;
    FDQryListaItensPedidosNOME_PRODUTO: TStringField;
    FDQryListaItensPedidosQUANTIDADE: TFloatField;
    FDQryListaItensPedidosUNID: TStringField;
    FDQryListaItensPedidosVALOR_UNITARIO: TFloatField;
    FDQryListaItensPedidosVALOR_TOTAL: TFloatField;
    FDQryListaItensPedidosCODIGO_GRUPO: TIntegerField;
    FDQryListaItensPedidosID_TIPO_SAIDA: TIntegerField;
    FDQryListaItensPedidosNOME_TIPO: TStringField;
    dsListaItensPedidos: TDataSource;
    FDQryUsuario: TUniQuery;
    FDQryUsuarioID: TIntegerField;
    FDQryUsuarioNOME: TStringField;
    FDQryUsuarioSENHA: TStringField;
    FDQryUsuarioEMAIL: TStringField;
    FDQryUsuarioID_VENDEDOR: TIntegerField;
    FDQryEmpresa: TUniQuery;
    FDQryEmpresaID: TIntegerField;
    FDQryEmpresaNOME_EMPRESA: TStringField;
    dsQryEmpresa: TDataSource;
    procedure UniGUIMainModuleDestroy(Sender: TObject);
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure UniGUIMainModuleSessionTimeout(ASession: TObject;
      var ExtendTimeOut: Integer);
    procedure FDQryProdutosVALORGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniGUIMainModuleBeforeLogin(Sender: TObject;
      var Handled: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    nPedido:integer ;
    cPedidoAberto:string ;
    nVendedor:integer ;
    cUsuario:string ;
    nIdItemAtual:integer ;
    nQtdItens:integer ;
    nIdClientePedido:integer ;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication,
  uniGUITypes, uniGUIClasses ;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;


procedure TUniMainModule.FDQryProdutosVALORGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   text := formatFloat( TNumericField( sender ).DisplayFormat , sender.value );
end;

 //   pulo do gato para trocar logo a imagem/refresh
 //   text := sender.AsString +'?'+IntToStr( random(999) ) ;

procedure TUniMainModule.UniGUIMainModuleBeforeLogin(Sender: TObject;
  var Handled: Boolean);
begin

  UniSession.AddJS('Ext.Loader.loadScript("/files/style-menu.css?")'  );
  UniSession.AddJS('Ext.Loader.loadScript("/files/style-marca.css?")'  );
  UniSession.AddJS('Ext.Loader.loadScript("/files/style-produto.css?")'  );
  UniSession.AddJS('Ext.Loader.loadScript("/files/style-itens.css?")'  );
//  UniAddCSSLibrary('files/reset.css?' + FormatDateTime('ddmmyyyyhhmmss', Now), true, [upoFolderFiles, upoPlatformBoth]);
//  UniAddCSSLibrary('files/style.css?' + FormatDateTime('ddmmyyyyhhmmss', Now), true, [upoFolderFiles, upoPlatformBoth]);

end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
   cPedidoAberto    := 'N' ;
   nQtdItens        := 0 ;
   nIdItemAtual     := 0 ;
   nIdClientePedido := 0 ;

   FDQryGrupos.open ;
end;

procedure TUniMainModule.UniGUIMainModuleDestroy(Sender: TObject);
begin
   FDQryProdutos.Active := false  ;
   FDQryGrupos.Active   := false  ;
   FDCon.Connected      := false  ;
end;

procedure TUniMainModule.UniGUIMainModuleSessionTimeout(ASession: TObject;
  var ExtendTimeOut: Integer);
begin
    ExtendTimeOut := 180000 ;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);

  // UniAddCSSLibrary('files/style.css?' + FormatDateTime('ddmmyyyyhhmmss', Now), true, [upoFolderFiles, upoPlatformBoth]);

end.
