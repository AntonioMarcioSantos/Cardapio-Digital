unit iGrowl.Msg;
interface

type
  TiGrowl = class
    public
      class procedure Success(msg:WideString;title:WideString='');
      class procedure Error(msg:WideString;title:WideString='');
      class procedure Notice(msg:WideString;title:WideString='');
      class procedure Info(msg:WideString;title:WideString='');
      class procedure Toast(msg:WideString;title:WideString='');
      class procedure iGMessage(iGtype:WideString);
      class procedure iGToast;
  end;


const CDN = '/files';

var
  iGTitle, iGMsg: WideString;

implementation

uses
  uniGUIApplication, System.SysUtils, uniGUIClasses, uniGUITypes;

{ iGrowlMsg }

class procedure TiGrowl.iGMessage(iGtype:WideString);
var
  StrJS: WideString;
begin

  StrJS := '$.iGrowl({ ';

  if iGTitle <> EmptyStr then
    StrJS := StrJS + 'title: "'+iGTitle+'",';

  StrJS := StrJS + 'type: "'+iGtype+'",';

  StrJS := StrJS + 'message: "'+iGMsg+'",';
  StrJS := StrJS + 'animation: true,';
  StrJS := StrJS + 'delay: 3000,';
  StrJS := StrJS + 'icon: "vicons-support",';
  StrJS := StrJS + 'placement : { x: "center" },';
  StrJS := StrJS + 'animShow: "fadeInLeftBig",';
  StrJS := StrJS + 'animHide: "fadeOutRight",';
  StrJS := StrJS + 'image: { src: "'+CDN+'/igrowl/images/'+iGtype+'.png", class: "igrowl-image" }'; // ,class: "example-image"
  StrJS := StrJS + '})';

  UniSession.AddJS(StrJS);

end;

class procedure TiGrowl.iGToast;
var
  StrJS: WideString;
begin

  StrJS := '$.iGrowl({ ';

  if iGTitle <> EmptyStr then
    StrJS := StrJS + 'title: "'+iGTitle+'",';

  StrJS := StrJS + 'type: "toast",';

  StrJS := StrJS + 'message: "'+iGMsg+'",';
  StrJS := StrJS + 'animation: true,';
  StrJS := StrJS + 'small: true,';
//  StrJS := StrJS + 'icon: "linecons-fire",';
  StrJS := StrJS + 'delay: 3000,';
  StrJS := StrJS + 'placement : { x: "center", y: "bottom" },';
  StrJS := StrJS + 'animShow: "fadeIn",';
  StrJS := StrJS + 'animHide: "fadeOut",';
//  StrJS := StrJS + 'image: { src: "'+CDN+'/igrowl/images/info.png"}'; // ,class: "example-image"
  StrJS := StrJS + '})';

  UniSession.AddJS(StrJS);

end;

class procedure TiGrowl.Success(msg:WideString;title:WideString='');
begin

  iGMsg :=  msg;
  iGTitle := title;
  Self.iGMessage('success');

end;

class procedure TiGrowl.Error(msg:WideString;title:WideString='');
begin

  iGMsg :=  msg;
  iGTitle := title;
  Self.iGMessage('error');

end;

class procedure TiGrowl.Notice(msg:WideString;title:WideString='');
begin

  iGMsg :=  msg;
  iGTitle := title;
  Self.iGMessage('notice');

end;

class procedure TiGrowl.Info(msg:WideString;title:WideString='');
begin

  iGMsg   :=  msg;
  iGTitle :=  title;
  Self.iGMessage('info');

end;

class procedure TiGrowl.Toast(msg:WideString;title:WideString='');
begin

  iGMsg   :=  msg;
  iGTitle := title;
  Self.iGToast;

end;

initialization
  UniAddCSSLibrary(CDN+'/igrowl/stylesheets/animate.css', True, [upoFolderUni, upoPlatformBoth]);
  UniAddCSSLibrary(CDN+'/igrowl/stylesheets/igrowl.css', True, [upoFolderUni, upoPlatformBoth]);
  UniAddCSSLibrary(CDN+'/igrowl/stylesheets/icomoon/linecons.css', True, [upoFolderUni, upoPlatformBoth]);
  UniAddCSSLibrary(CDN+'/igrowl/stylesheets/icomoon/feather.css', True, [upoFolderUni, upoPlatformBoth]);
  UniAddCSSLibrary(CDN+'/igrowl/stylesheets/icomoon/vicons.css', True, [upoFolderUni, upoPlatformBoth]);
  UniAddCSSLibrary(CDN+'/igrowl/stylesheets/icomoon/steadysets.css', True, [upoFolderUni, upoPlatformBoth]);
  UniAddCSSLibrary(CDN+'/fontawesome/css/all.css', True, [upoFolderUni, upoPlatformBoth]);

  UniAddJSLibrary(CDN+'/fontawesome/js/all.js', True, [upoFolderUni, upoPlatformBoth]);
  UniAddJSLibrary(CDN+'/igrowl/javascripts/igrowl.js', True, [upoFolderUni, upoPlatformBoth]);

end.

