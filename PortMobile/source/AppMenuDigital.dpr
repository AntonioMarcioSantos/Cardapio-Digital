
program AppMenuDigital;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  uAcesso in 'uAcesso.pas' {FrmAcesso: TUnimLoginForm},
  FrmLancaProdutos in 'FrmLancaProdutos.pas' {FrmLancaProduto: TUnimForm},
  FrmListaCliente in 'FrmListaCliente.pas' {FrmListaClientes: TUnimForm},
  FrmListaPedidos in 'FrmListaPedidos.pas' {FrmListaPedido: TUnimForm};

{$R *.res}

begin
  Application.Initialize;
  TUniServerModule.Create(Application);

  Application.Run;
end.
