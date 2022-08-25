unit uFrameBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniLabel, uniPanel, uniImage,
  Vcl.Imaging.pngimage, uniDBEdit, uniScrollBox, uniButton, uniBitBtn, uniEdit,
  uniBasicGrid, uniDBGrid, uniPageControl, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.TypInfo;

type

  TAcaoCrud = (tpIncluir, tpAlterar, tpExcluir, tpListaVazia,tpListacomRegistros);


  TFrameBase = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    lbTituloFrame: TUniLabel;
    btFechar: TUniImage;
    pnBody: TUniPanel;
    PageCadastro: TUniPageControl;
    TS1: TUniTabSheet;
    GridListaCrud: TUniDBGrid;
    TS2: TUniTabSheet;
    UniContainerPanel3: TUniContainerPanel;
    UniScrollBox1: TUniScrollBox;
    UniContainerPanel4: TUniContainerPanel;
    edPesquisar: TUniEdit;
    BtInc: TUniBitBtn;
    BtAlt: TUniBitBtn;
    BtExc: TUniBitBtn;
    BtCan: TUniBitBtn;
    BtGrv: TUniBitBtn;
    dsCad: TDataSource;
    dsFiltro: TDataSource;
    FDQryCad: TFDQuery;
    FDQryFiltro: TFDQuery;
    BtFiltrar: TUniBitBtn;
    procedure btFecharClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
 //   procedure UniBitBtn5Click(Sender: TObject);
    procedure SetBut(Acao:TAcaoCrud) ;
    procedure mudarcorbotao;
    function CamposValidados :Boolean;
    procedure BtIncClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
    procedure BtExcClick(Sender: TObject);
    procedure BtCanClick(Sender: TObject);
    procedure BtGrvClick(Sender: TObject);
    procedure GridListaCrudDblClick(Sender: TObject);
    procedure DCallBack2(Sender: TComponent; Res: Integer);
    procedure DeletaRegistro  ;
    procedure PageCadastroChange(Sender: TObject);
    procedure BtFiltrarClick(Sender: TObject);
  private
    Qry : TFDQuery;
    procedure LiberaPageAtiva;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Main, MainModule,ClassAuxiliar;


procedure TFrameBase.BtFiltrarClick(Sender: TObject);
var i : integer;
  begin

   if ( EdPesquisar.Text = EmptyStr ) then
       Begin
          FDQryFiltro.Close ;
         abort ;
       End;


    // Abre a query do filtro
    if  FDQryCad.State in [dsEdit,dsInsert] then
       begin
         ShowMessage('Registro está em modo de Edição ');
         abort ;

       end;

    FDQryFiltro.Close;

    for i := 0 to  FDQryFiltro.Params.Count-1 do
        Begin
          FDQryFiltro.Params[i].AsString := '%'+EdPesquisar.Text
        End;

     FDQryFiltro.Open;

     SetBut(tpListacomRegistros);

  //  GridListaCrud.SetFocus ; // Joga o Foco para o Grid ;

end;

procedure TFrameBase.BtGrvClick(Sender: TObject);
Var
 vError : String;
Begin
    if not (CamposValidados) then
       Abort
    else
      Begin

         if FDQryCad.State in [dsInsert,dsEdit] then
           Begin
             try
                FDQryCad.Post;
             except
                on E: Exception do
                begin
                  UniMainModule.Mensagem('Sistema diz: ' + E.Message);
                  abort ;
                end;
             end;
           End;

        if  FDQryFiltro.Active then
            FDQryFiltro.Refresh;

        PageCadastro.Pages[0].TabVisible := True  ;
        PageCadastro.Pages[1].TabVisible := False ;

        PageCadastro.ActivePage := TS1 ; // Volta para a Tela de Consulta

        if  FDQryFiltro.IsEmpty then
           SetBut(tpListaVazia)
        Else
           SetBut(tpListacomRegistros);

      End;


end;

procedure TFrameBase.BtIncClick(Sender: TObject);
var i : integer; Cmp:String;

 begin

  try
    FDQryCad.Close ;
    for i := 0 to  FDQryCad.Params.Count - 1 do
    begin
      Cmp :=  FDQryCad.Params[i].Name;
       FDQryCad.Params[i].Value :=  FDQryFiltro.FieldbyName(Cmp).Value;
    end;
     FDQryCad.Open;
  Except
     FDQryCad.Params[0].AsInteger := -1 ;
     FDQryCad.Open;
  End;

  if not( FDQryCad.Active) then
      FDQryCad.Open;

   FDQryCad.Insert ;


     // Visualizando a Tab2
  PageCadastro.Pages[0].TabVisible := False ;
  PageCadastro.Pages[1].TabVisible := True ;
     // Foco na segunda aba
  PageCadastro.ActivePage := TS2 ;

  SetBut(tpIncluir);


end;

function TFrameBase.CamposValidados: Boolean;
var
  i,e :Integer;
  Campos :TStrings;
begin
  Try
      Campos := TStringList.Create;
      Campos.Clear ;
      e := 0 ;
      for I:= 0 to ComponentCount -1 do
         begin
  // Para DBEdit
           if ( Components[I] is TUniDBEdit )  then
              begin

                 If ( TUniDBEdit(Components[i]).Tag = 1 ) then
                   Begin
                     if TUniDBEdit(Components[i]).Text = '' then
                        begin
                          Campos.Add('-' + TUniDBEdit(Components[i]).Field.DisplayName ) ;
                          inc(e) ;
                        end;
                   End;
              end;
  //
         end;

       if e = 0  then
          result := true ;


       If e > 0 then
  //        if (AllTrim(Campos.Text)<>EmptyStr) then
          Begin
             Campos.Insert(0,'Preencha os campos obrigatórios:');
  //           Campos.Insert(1, EmptyStr);
             ShowMessage(Campos.Text);
            // Acoes.MenssagemPadrao(Campos.Text,'');
             FDQryCad.Fields[e].FocusControl ;
             result := false ;
          end
       Else
          result := true;

    finally
      Campos.Free;
    end;


end;

procedure TFrameBase.DCallBack2(Sender: TComponent; Res: Integer);
begin
  case Res of
    mrYes :Begin
             DeletaRegistro ;
             SetBut(tpListacomRegistros);
           End;
    mrNo  :  BtCan.Click  ;
  end;
end;

procedure TFrameBase.DeletaRegistro;
Var vError:String;
begin


    try
     FDQryCad.Delete;
  // FDQryCad.ApplyUpdates(0) ;
    except
       Begin
         UniMainModule.Mensagem('ERRO' , vError );
         abort ;
       end

    end;

    if  FDQryFiltro.Active then
        FDQryFiltro.Refresh;
end;

procedure TFrameBase.GridListaCrudDblClick(Sender: TObject);
begin
  BtAlt.Click ;
end;

procedure TFrameBase.BtAltClick(Sender: TObject);
var i : integer; Cmp:String;
begin

  PageCadastro.ActivePage := TS2 ;

  Try
    FDQryCad.Close;
   for i := 0 to  FDQryCad.Params.Count - 1 do
   begin
      Cmp :=  FDQryCad.Params[i].Name;
      FDQryCad.Params[i].Value :=  FDQryFiltro.FieldbyName(Cmp).Value ;
   end;
    FDQryCad.Open;

    SetBut(tpAlterar);

    PageCadastro.Pages[0].TabVisible := False ;
    PageCadastro.Pages[1].TabVisible := True ;

  Except

   UniMainModule.Mensagem('ATENÇÃO' , 'Você precisa selecionar um registro para fazer manutenção do mesmo.');

   Abort ;
  End ;




end;



procedure TFrameBase.LiberaPageAtiva;
begin
  FDQryCad.Close ;
  FDQryFiltro.Close ;

  fPrincipal.PageControlGeral.ActivePage.Free;
end;

procedure TFrameBase.mudarcorbotao;
begin
// BtAlt.ClientEvents.UniEvents.Values['beforeInit'] := 'function(sender,config)'+
// '''{'''+
//  'config.baseCls = ''btn''+'';'''+
//  'config.cls     = ''btn-success'' ''}''';
//  UniSession.AddJS(BtAlt.JsName + '.addCls("btn-success")';

//
//  UniSession.AddJS(BtAlt.JsName + '.removeCls(''btn-dark'');');
//
//  UniSession.AddJS(BtAlt.JsName + '.addCls(''btn-success'')') ;

end;

procedure TFrameBase.PageCadastroChange(Sender: TObject);
begin
   If not (  FDQryCad.State in[dsInsert,dsEdit] ) then
      Begin
        If PageCadastro.ActivePage = TS2 then
           BtAlt.Click ;
      End;
end;

procedure TFrameBase.SetBut(Acao: TAcaoCrud);

var s:string ;
begin
  s := GetEnumName(TypeInfo(TAcaoCrud),integer(Acao));
//  UniLabel1.Caption := s ;
//  UniLabel1.Refresh ;
//  UniLabel1.Repaint ;

  // Controle dos botoes
  if acao in [tpIncluir,tpAlterar,tpExcluir] then
     begin
       mudarcorbotao ;
       BtInc.Enabled  := false;
       BtAlt.Enabled  := false;
       BtExc.Enabled  := false;
       BtCan.Enabled  := true;
       BtGrv.Enabled  := true;
     end
   else if acao in [tpListaVazia] then
      begin
        mudarcorbotao ;
        BtInc.Enabled  := true;
        BtAlt.Enabled  := false;
        BtExc.Enabled  := false;
        BtCan.Enabled  := false;
        BtGrv.Enabled  := false;
      end
    else if acao in [tpListacomRegistros] then
      begin
        mudarcorbotao ;
        BtInc.Enabled  := true;
        BtAlt.Enabled  := true;
        BtExc.Enabled  := true;
        BtCan.Enabled  := false;
        BtGrv.Enabled  := false;
       end;
end;

procedure TFrameBase.UniFrameCreate(Sender: TObject);
begin

  PageCadastro.Pages[1].TabVisible := False ;
  PageCadastro.ActivePageIndex     := 0;


end;



procedure TFrameBase.BtCanClick(Sender: TObject);
begin

//    If dsCad.DataSet.State in [dsinsert,dsedit] then
//       dsCad.DataSet.Cancel ;
  PageCadastro.ActivePage := TS1 ; // Volta para a Tela de Consulta

    if  FDQryFiltro.IsEmpty then
        SetBut(tpListaVazia)
    else
        SetBut(tpListacomRegistros);

     FDQryCad.Close ;

  PageCadastro.Pages[0].TabVisible := True  ;
  PageCadastro.Pages[1].TabVisible := False ;


end;

procedure TFrameBase.BtExcClick(Sender: TObject);

var i : integer; Cmp:String;
begin

    SetBut(tpExcluir);

    Try
       FDQryCad.Close;

      for i := 0 to  FDQryCad.Params.Count - 1 do
      begin
        Cmp :=  FDQryCad.Params[i].Name;
        FDQryCad.Params[i].Value :=  FDQryFiltro.FieldByName(Cmp).Value ;
      end;
      FDQryCad.Open;
    Except
      UniMainModule.Mensagem('ATENÇÃO' , 'Você precisa selecionar um registro para fazer manutenção do mesmo.');

      abort;
    End;

    PageCadastro.ActivePage      :=  TS2 ;

    MessageDlg('Confirma a Exclusão ?', mtConfirmation, mbYesNo,
          DCallBack2) ;

    PageCadastro.ActivePage := TS1 ; // Volta para a Tela de Consulta



  SetBut(tpAlterar);
end;

procedure TFrameBase.btFecharClick(Sender: TObject);
begin
  LiberaPageAtiva;
end;

end.
