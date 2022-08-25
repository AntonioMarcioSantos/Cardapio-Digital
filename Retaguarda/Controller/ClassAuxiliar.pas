unit ClassAuxiliar;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniPanel, uniGUIBaseClasses, uniGroupBox,
  uniBasicGrid, uniDBGrid, Vcl.Imaging.pngimage, uniImage, uniPageControl,
  uniSplitter, uniBitBtn, uniSpeedButton, uniEdit, uniLabel, uniToolBar,
  Data.DB,  uniDBText, uniDBEdit, uniScrollBox,
  uniMultiItem, uniComboBox, uniDBComboBox, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, uniMemo, System.IniFiles,
  uniSyntaxEditor;

// Quando for usar injeção usando a class Helper, HABILITAR a Linha abaixo
  type
    TAcoes = class(TUniForm) // TAcoes = class Helper for TForm
    private

    public
      function ValidaCNPJ_CPF(cNumero:String ) : boolean ;
      function cpf(num: string): boolean;
      function cgc(num: string): boolean;
      function ExtraiNum(s:string):string;
      function ChecaEstado(Dado : string) : boolean;
      function ValidarEMail(aStr: string): Boolean;
  end;

  TCep = class

  private
    // atributos da classe
    FEnderecoCep: string;
    FBairroCep:   string;
    FCidadeCep:   string;
    FUFCep:       string;
  public
    // métodos públicos da classe
//    constructor Create;
//    procedure Salvar(const objetoCliente: TCliente);
    // propriedades da classe (semelhante aos getters and setters)
    property EnderecoCep: string read FEnderecoCep write FEnderecoCep;
    property BairroCep:  string read FBairroCep write FBairroCep ;
    property CidadeCep:  string read FCidadeCep write FCidadeCep ;
    property UfCep: string read FUfCep write FUfCep ;

    function BuscaDadosCep(cCep:String):boolean ;

  end;

  TChat = class (TComponent)
  private
    Fativar: Boolean ;
  public
    property Ativar: Boolean read Fativar write Fativar ;

    function CarregarScript:string ;

  end;




// Quando for usar injeção usando a class Helper, DESABILITAR a Linha abaixo
var
   Acoes : TAcoes ;
   Cep   : TCep ;
//   Chat  : TChat ;
implementation

{ TAcoes }

function TAcoes.ValidarEMail(aStr: string): Boolean;
begin
 aStr := Trim(UpperCase(aStr));
 if Pos('@', aStr) > 1 then
 begin
   Delete(aStr, 1, pos('@', aStr));
   Result := (Length(aStr) > 0) and (Pos('.', aStr) > 2);
 end
 else
   Result := False;
end;


function TAcoes.cgc(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
d1,d2: integer;
digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  n10:=StrToInt(num[10]);
  n11:=StrToInt(num[11]);
  n12:=StrToInt(num[12]);
  d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
     d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
     calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[13]+num[14];
  if calculado=digitado then
     cgc:=true
  else
     cgc:=false;
end;

function TAcoes.ChecaEstado(Dado: string): boolean;
const
  Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var
  Posicao : integer;
begin
Result := true;
if Dado <> '' then
  begin
  Posicao := Pos(UpperCase(Dado),Estados);
  if (Posicao = 0) or ((Posicao mod 2) = 0) then
  begin
  Result := false;
  end;
  end;

end;

function TAcoes.cpf(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
  d1:=11-(d1 mod 11);
  if d1>=10 then d1:=0;
    d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
  d2:=11-(d2 mod 11);
  if d2>=10 then d2:=0;
    calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[10]+num[11];
  if calculado=digitado then
    cpf:=true
  else
    cpf:=false;
end;



function TAcoes.ExtraiNum(s: string): string;
var
 i :integer; texto,aux :string;
begin
  If S = '' then
     S := '0' ;
  texto := S ;
  For i := 1 to Length(Texto) do
      if (Texto[i] in['0'..'9',',']) then
         aux := aux+ copy(Texto,i,1);
         ExtraiNum := Aux;

end;


{$REGION 'Valida_CNPJ'}

  function TAcoes.ValidaCNPJ_CPF(cNumero: String): boolean;
  begin
    cNumero := Acoes.ExtraiNum(cNumero);
  // Valida CPF
    If Length(cNumero) < 12 then
       Begin
         If not Acoes.Cpf(cNumero) then
            Begin
              result := false ;
              Exit;
            End
         Else
           Begin
             result := True ;
             Exit;
           End;
       End ;
  // Valida CNPJ
    If Length(cNumero) > 11 then
       Begin
         If not Acoes.Cgc(cNumero) then
            Begin
              result := false ;
              Exit;
            End
         Else
            Begin
              result := true ;
              Exit;
            End;
       End ;
    result := true ;
  end;

{$ENDREGION}
{ TCep }

function TCep.BuscaDadosCep(cCep: String): boolean;
var
  URL     : TIdHTTP;
  Temp    : String;
  Dados   : TStringList;
  XML     : TStringList;
  I, Count: Integer;
  Memo2   : TUniMemo ;
begin

    URL   := TIdHTTP.Create(Application);

    Try
       Temp  := URL.Get('http://republicavirtual.com.br/web_cep.php?cep='+cCep+'&formato=xml');
    Except
       ShowMessage('você precisa estar conectado na internet para usar este serviço.');
       Result := false ;
       exit ;
    End;


    Dados := TStringList.Create;
    Dados.Text := UpperCase(StringReplace(Temp, '&', #13#10, [rfreplaceAll]));
//    Memo2.Text := Dados.Text;

   XML := TStringList.Create;

   try
      XML.Text := Dados.Text;

      // testo se existe alugma coisa
      if Pos('CEP NãO ENCONTRADO', XML.Text) > 0 then
      begin
         ShowMessage('A pesquisa não retornou nenhum resultado!');
         Exit;
      end;

      // quebro de linha para divisão dos elementos por linha
      XML.Text := StringReplace(XML.Text, '>', '>'+#13#10, [rfReplaceALL]);
      XML.Text := StringReplace(XML.Text, '</', #13#10+'</', [rfReplaceALL]);

      Memo2      := TUniMemo.Create(Application);
      Memo2.Text := XML.Text;
   finally
     // URL.Free ;
      XML.Free;
   end;


   EnderecoCep := UpperCase(Memo2.Lines[25]+'  '+Memo2.Lines[29]);
   BairroCep   := UpperCase(Memo2.Lines[21]);
   CidadeCep   := UpperCase(Memo2.Lines[17]);
   UFCep       := UpperCase(Memo2.Lines[13]);

   Memo2.Free ;

   result := true ;
end;

{ TChat }


 function TChat.CarregarScript: string;
var
   ArquivoChat:TUniSyntaxEdit ;
begin

   if Fativar then
      begin
        ArquivoChat := TUniSyntaxEdit.Create(self);
        Try
          ArquivoChat.Lines.LoadFromFile('./files/chat.ini');
          Result := ArquivoChat.Text;
        Finally
          FreeAndNil(ArquivoChat);
        End;
      end
   Else
      Result := '' ;

end;

end.
