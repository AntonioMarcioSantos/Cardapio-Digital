unit uFrameUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrameBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniGUIClasses,
  uniScrollBox, uniEdit, uniBasicGrid, uniDBGrid, uniPageControl, uniPanel,
  uniButton, uniBitBtn, Vcl.Imaging.pngimage, uniImage, uniLabel,
  uniGUIBaseClasses, uniDBText, uniDBEdit;

type
  TFrameUsuarios = class(TFrameBase)
    FDQryCadID: TIntegerField;
    FDQryCadNOME: TStringField;
    FDQryCadSENHA: TStringField;
    FDQryCadEMAIL: TStringField;
    FDQryCadDATA_CADASTRO: TSQLTimeStampField;
    FDQryFiltroID: TIntegerField;
    FDQryFiltroNOME: TStringField;
    FDQryFiltroSENHA: TStringField;
    FDQryFiltroEMAIL: TStringField;
    FDQryFiltroDATA_CADASTRO: TSQLTimeStampField;
    EdSenha: TUniDBEdit;
    EdNome: TUniDBEdit;
    UniDBText1: TUniDBText;
    EdEmail: TUniDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameUsuarios: TFrameUsuarios;

implementation

{$R *.dfm}

end.
