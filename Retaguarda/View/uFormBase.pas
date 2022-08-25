unit uFormBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniEdit, uniLabel,
  uniButton, uniBitBtn, uniImage, Vcl.Imaging.pngimage;

type
  TFormBase = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FormBase: TFormBase;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FormBase: TFormBase;
begin
  Result := TFormBase(UniMainModule.GetFormInstance(TFormBase));
end;

procedure TFormBase.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  case Key of
    VK_ESCAPE : Close;
  end;

end;

end.
