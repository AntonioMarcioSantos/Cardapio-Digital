unit ClassAlert;

interface

uses
  System.SysUtils, System.Classes, uniGUIBaseClasses, uniGUIClasses, uniGUITypes, uniGUIJSUtils,
  uniGUIApplication,RTTI, Vcl.Forms;

type EnumTipoAlertas = (Sucesso, Erro, Aviso, Informacao, Pergunta);

type
  TUniAlert = class
  private
    { Private declarations }
  public
    { Public declarations }
     class function SwAlerta (Titulo , Mensagem : string; TipoAlerta : EnumTipoAlertas; TempoFechar : integer = 5000): boolean ;
  end;

  UniAlert = TUniAlert ;


implementation

{ TUniAlert }



{ TUniAlert }

class function TUniAlert.SwAlerta(Titulo, Mensagem: string;
  TipoAlerta: EnumTipoAlertas; TempoFechar: integer): boolean;

var Alerta : TUniSweetAlert;
begin
  Alerta       := TUniSweetAlert.Create(Application);

  case TipoAlerta of
    Sucesso    : Alerta.Success(Titulo,Mensagem  ,'', TempoFechar);
    erro       : Alerta.Error(Titulo,Mensagem    ,'', TempoFechar);
    Aviso      : Alerta.Warning(Titulo,Mensagem  ,'', TempoFechar);
    Informacao : Alerta.Info(Titulo,Mensagem     ,'', TempoFechar);
    Pergunta   : Alerta.Question(Titulo,Mensagem ,'OK','Cancelar', TempoFechar);
  end;

  Alerta.Destroy;
end;

end.
