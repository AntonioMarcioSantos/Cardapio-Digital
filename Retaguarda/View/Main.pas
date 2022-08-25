unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame, uniTreeView, uniTreeMenu, Vcl.Menus, uniMainMenu, uniImageList,
  uniButton, uniBitBtn, uniLabel, uniPageControl, System.ImageList, Vcl.ImgList,
  uniImage, Vcl.Imaging.pngimage, uniTimer, uniEdit, uniURLFrame, uniScreenMask,
  uniSyntaxEditorBase, uniSyntaxEditor,uniGUIVars,uniGUIFrame, dxGDIPlusClasses;

type
  TfPrincipal = class(TUniForm)
    PageControlGeral: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniURLFrame1: TUniURLFrame;
    PnlTop: TUniPanel;
    pnLogo: TUniPanel;
    Logo: TUniImage;
    TimerResize: TUniTimer;
    TimerSessao: TUniTimer;
    lbTitulo: TUniLabel;
    Menu: TUniTreeMenu;
    UniNativeImageList1: TUniNativeImageList;
    UniMenuItems1: TUniMenuItems;
    mnuGrupos: TUniMenuItem;
    mnuProdutos: TUniMenuItem;
    mnuUsuarios: TUniMenuItem;
    UniLabel1: TUniLabel;
    E1: TUniMenuItem;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniScreenMask1: TUniScreenMask;
    procedure TimerResizeTimer(Sender: TObject);
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure mnuGruposClick(Sender: TObject);
    procedure UniLabel1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormBeforeShow(Sender: TObject);
    procedure mnuProdutosClick(Sender: TObject);
    procedure mnuUsuariosClick(Sender: TObject);
  private
    procedure ToogleMenu;


  public
    { Public declarations }
  end;


function fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication,
  uFrameBase, uFrameProdutos, uFrameGrupos, ClassAuxiliar, Utils,
  uFrameUsuarios;

function fPrincipal: TfPrincipal;
begin
  Result := TfPrincipal(UniMainModule.GetFormInstance(TfPrincipal));

end;

procedure TfPrincipal.ToogleMenu;
begin

  if Menu.Width > 50 then
  begin
    Menu.Micro   := true;
    pnLogo.Width := 44;
  end else
  begin

    pnLogo.ClientEvents.UniEvents.Clear;

    Menu.Micro := false;

    pnLogo.ClientEvents.UniEvents.Add('resize=function resize(sender, width, height, oldWidth, oldHeight, eOpts)'+
                                      '{sender.cls="animated zoomIn";}');

    pnLogo.Width :=  221;
    pnLogo.Repaint;
  end;

end;

procedure TfPrincipal.UniFormBeforeShow(Sender: TObject);
var Chat : TChat ;
begin

  Chat := TChat.Create(Self) ;
  Try
    Chat.Ativar := True ;
    fPrincipal.Script.Text := Chat.CarregarScript ;
  Finally
     FreeAndNil(Chat) ;
  End;

  fPrincipal.Script.LoadFromFile('./files/chat.ini');

end;

procedure TfPrincipal.UniFormCreate(Sender: TObject);
begin
   UniURLFrame1.HTML.LoadFromFile('./www/index.html',TEncoding.UTF8);
   UniURLFrame1.Show ;
end;

procedure TfPrincipal.UniFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin

//  TimerResize.Enabled := True;

end;



procedure TfPrincipal.UniLabel1Click(Sender: TObject);
begin
  ToogleMenu;
end;

procedure TfPrincipal.mnuGruposClick(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TFrameGrupos),'Grupos');
end;

procedure TfPrincipal.mnuProdutosClick(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TFrameProdutos),'Produtos');
end;

procedure TfPrincipal.mnuUsuariosClick(Sender: TObject);
begin
   AddTab(PageControlGeral,TFrame(TFrameUsuarios),'Usuários');
end;

procedure TfPrincipal.TimerResizeTimer(Sender: TObject);
begin

//  if Menu.Micro = False then
  begin

    if fPrincipal.Width < 760 then
    begin
      Menu.Micro   := True;
      pnLogo.Width := 44;
      pnLogo.Update;
    end else
    begin
      Menu.Micro   := False;
      pnLogo.Width := Menu.Width ;
      pnLogo.Update;
    end;

    TimerResize.Enabled := False;

    UniSession.Synchronize();

  end;

end;

initialization
  RegisterAppFormClass(TfPrincipal);

end.
