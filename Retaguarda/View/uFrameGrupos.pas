unit uFrameGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UFrameBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniScrollBox, uniEdit,
  uniBasicGrid, uniDBGrid, uniPageControl, uniPanel, uniButton, uniBitBtn,
  Vcl.Imaging.pngimage, uniImage, uniLabel, uniGUIBaseClasses, uniDBEdit,
  uniDBText, uniFileUpload, uniDBVerticalGrid;

type
  TFrameGrupos = class(TFrameBase)
    UniDBEdit1: TUniDBEdit;
    FDQryCadID: TIntegerField;
    FDQryCadNOME: TStringField;
    FDQryCadDESCRICAO: TStringField;
    FDQryCadFOTO: TStringField;
    UniDBEdit2: TUniDBEdit;
    EdFoto: TUniDBEdit;
    UniDBText1: TUniDBText;
    FDQryFiltroID: TIntegerField;
    FDQryFiltroNOME: TStringField;
    FDQryFiltroDESCRICAO: TStringField;
    FDQryFiltroFOTO: TStringField;
    UniFileUpload1: TUniFileUpload;
    UniBitBtn2: TUniBitBtn;
    UniContainerPanel2: TUniContainerPanel;
    UniImage1: TUniImage;
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure BtGrvClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
  private
    { Private declarations }
    IsImage : Boolean;

    DestName : string;
    DestFolder : string;


  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ServerModule, MainModule;



procedure TFrameGrupos.BtAltClick(Sender: TObject);
begin

  inherited;
  Try
    UniImage1.Picture.LoadFromFile( FDQryFiltroFOTO.AsString );
  Except
  End;
end;

procedure TFrameGrupos.BtGrvClick(Sender: TObject);
begin
 // CopyFile(PChar(UniFileUpload1.FileName), PChar(DestName), False);
  inherited;


end;

procedure TFrameGrupos.UniBitBtn2Click(Sender: TObject);
begin

  UniFileUpload1.Execute;

end;

procedure TFrameGrupos.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);

begin


//    DestFolder         := UniServerModule.StartPath+'Files/Images/';

    DestFolder         := '../Images/grupos/';
    DestName           := DestFolder+ExtractFileName(UniFileUpload1.FileName);
//   ShowMessage(DestName) ;
    if not ( FDQryCad.State in [dsEdit,dsInsert] ) then
       FDQryCad.Edit ;

    FDQryCadFOTO.Value := '../Images/grupos/'+UniFileUpload1.FileName ;


    CopyFile(PChar(AStream.FileName), PChar(DestName), False);

    UniImage1.Picture.LoadFromFile(AStream.FileName);


end;

procedure TFrameGrupos.UniFrameCreate(Sender: TObject);
begin
  inherited;
//  if not DirectoryExists(UniServerModule.StartPath+'files\Imagens\grupos') then
//    CreateDir(UniServerModule.StartPath+'files\Imagens\grupos\');
end;

end.
