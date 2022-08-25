unit uFrameProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uFrameBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniScrollBox, uniEdit,
  uniBasicGrid, uniDBGrid, uniPageControl, uniPanel, uniButton, uniBitBtn,
  Vcl.Imaging.pngimage, uniImage, uniLabel, uniGUIBaseClasses, uniDBEdit,
  uniGroupBox, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniDBText, uniFileUpload;

type
  TFrameProdutos = class(TFrameBase)
    EdDescricao: TUniDBEdit;
    FDQryCadID: TIntegerField;
    FDQryCadID_GRUPO: TIntegerField;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadDESCRICAO: TStringField;
    FDQryCadCOMPOSICAO: TStringField;
    FDQryCadVALOR: TFMTBCDField;
    FDQryCadFOTO: TStringField;
    FDQryFiltroID: TIntegerField;
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroDESCRICAO: TStringField;
    FDQryFiltroCOMPOSICAO: TStringField;
    FDQryFiltroVALOR: TFMTBCDField;
    FDQryFiltroFOTO: TStringField;
    FDQryFiltroNOME: TStringField;
    UniDBText1: TUniDBText;
    UniDbListGrupos: TUniDBLookupComboBox;
    FDQryGrupos: TFDQuery;
    dsGrupos: TDataSource;
    FDQryGruposID: TIntegerField;
    FDQryGruposNOME: TStringField;
    EdComposicao: TUniDBEdit;
    EdFoto: TUniDBEdit;
    UniBitBtn2: TUniBitBtn;
    UniContainerPanel2: TUniContainerPanel;
    UniImage1: TUniImage;
    UniFileUpload1: TUniFileUpload;
    UniDBNumberEdit1: TUniDBNumberEdit;
    procedure FDQryFiltroVALORGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure BtAltClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TFrameProdutos.BtAltClick(Sender: TObject);
begin
  inherited;
  Try
    UniImage1.Picture.LoadFromFile( FDQryFiltroFOTO.AsString );
  Except
  End;
end;

procedure TFrameProdutos.FDQryFiltroVALORGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := formatFloat( TNumericField( sender ).DisplayFormat , sender.value );
end;

procedure TFrameProdutos.UniBitBtn2Click(Sender: TObject);
begin
   UniFileUpload1.Execute;

end;

procedure TFrameProdutos.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
var
  DestName : string;
  DestFolder : string;
begin

//    DestFolder         := UniServerModule.StartPath+'Files/Images/';

    DestFolder         := '../Images/produtos/';
    DestName           := DestFolder+ExtractFileName(UniFileUpload1.FileName);
    ShowMessage(DestName) ;
    if not ( FDQryCad.State in [dsEdit,dsInsert] ) then
       FDQryCad.Edit ;

    FDQryCadFOTO.Value := '../Images/produtos/'+UniFileUpload1.FileName ;


    CopyFile(PChar(AStream.FileName), PChar(DestName), False);

    UniImage1.Picture.LoadFromFile(AStream.FileName);

end;

procedure TFrameProdutos.UniFrameCreate(Sender: TObject);
begin
  inherited;
  FDQryGrupos.Open;
end;

procedure TFrameProdutos.UniFrameDestroy(Sender: TObject);
begin
  inherited;
  FDQryGrupos.Close;
end;

end.
