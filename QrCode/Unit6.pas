unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxBarcode, frxClass, Vcl.StdCtrls,
  Vcl.ExtCtrls, frxExportBaseDialog, frxExportPDF, frxBarcod ;

type
  TForm6 = class(TForm)
    frxReport1: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    frxPDFExport1: TfrxPDFExport;
    EdtLink: TEdit;
    Label1: TLabel;
    frxBarCodeObject2: TfrxBarCodeObject;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    minhaURL: String;
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin

  with frxReport1, frxPDFExport1 do
  begin

    TfrxMemoView (frxReport1.FindObject ('MemoURL')).Memo.Text := EdtLink.Text ; //QuotedStr('TESTE 123') ;

    frxReport1.PrintOptions.ShowDialog := True;
    frxReport1.ShowProgress := True;

    frxReport1.PrepareReport;
    frxReport1.ShowReport;


  end;
end;

end.
