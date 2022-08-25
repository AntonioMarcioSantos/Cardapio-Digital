{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  BackEnd;

uses
  uniGUIISAPI,
  Forms,
  uFrmLogin in 'View\uFrmLogin.pas' {fLogin: TUniLoginForm},
  MainModule in 'Model\MainModule.pas' {UniMainModule: TUniGUIMainModule},
  ServerModule in 'Model\ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Main in 'View\Main.pas' {MainForm: TUniForm},
  uFrameBase in 'View\uFrameBase.pas' {FrameBase: TUniFrame},
  ClassAuxiliar in 'Controller\ClassAuxiliar.pas',
  iGrowl.Msg in 'Controller\iGrowl.Msg.pas',
  Utils in 'Controller\Utils.pas',
  uFrameGrupos in 'View\uFrameGrupos.pas' {FrameGrupos: TUniFrame},
  uFrameProdutos in 'View\uFrameProdutos.pas' {FrameProdutos: TUniFrame},
  uFrameUsuarios in 'View\uFrameUsuarios.pas' {FrameUsuarios: TUniFrame},
  ClassLogin in 'Controller\ClassLogin.pas',
  UDmLogin in 'Model\UDmLogin.pas' {DMLogin: TDataModule};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}

  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);

  Application.Run;

{$endif}
end.
