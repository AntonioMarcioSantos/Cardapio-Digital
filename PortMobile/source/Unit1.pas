unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm;

type
  TUnimForm1 = class(TUnimForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimForm1: TUnimForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimForm1: TUnimForm1;
begin
  Result := TUnimForm1(UniMainModule.GetFormInstance(TUnimForm1));
end;

end.
