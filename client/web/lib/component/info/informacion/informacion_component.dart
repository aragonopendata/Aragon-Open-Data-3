import 'dart:html';
import 'package:angular2/platform/common.dart';
import 'package:angular2/core.dart';
import 'package:angular2/security.dart';
import 'package:aod3/object/webContent.dart';
import 'package:aod3/service/info_service.dart';
import 'package:angular2/router.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
    selector: 'informacion',
    templateUrl: 'informacion.html',
    directives: const [materialDirectives, defaultPopupSizeProvider,SafeInnerHtmlDirective],
    providers: const [materialProviders,InfoService,DomSanitizationService,ROUTER_PROVIDERS]
)

class InformacionComponent implements OnInit{
  final InfoService _infoService;
  final DomSanitizationService _domSanitizarionService;
  
  bool showMaxHeightDialog = false;
  String redirectUrl;
  String id;
  final RouteParams _routeParams;
  List webContents;
  final Location _location;
  String urlString;
  String titleString;
  String subTitleString;
  InformacionComponent(this._infoService,this._domSanitizarionService,this._routeParams,this._location);
  @override
  ngOnInit() {
    var _id = _routeParams.get('id');
    id = _id.toString();
    if (id=='informacion') {
      webContents = _infoService.iformaciones;
    } else if (id == 'sparql') {
      webContents = _infoService.sparql;
    } else if (id == 'desarrolladores') {
      webContents = _infoService.desarrolladores;
    } else if (id == 'apis') {
      webContents = _infoService.apis;
    } else if (id == 'eventos') {
      webContents = _infoService.eventos;
    }else {
      webContents = null;
    }

    //document.title('TESTTITLE');
    urlString=_location.path();
    if(urlString.contains('info')){
      titleString = 'INFO OPEN DATA';
      subTitleString = 'Todo lo necesario para entender Aragón Open Data';}
    else if (urlString.contains('herramientas')){
      titleString = 'HERRAMIENTAS';
      subTitleString = 'herramientas';
    }
    webContents.forEach((wc){
      wc.content = _domSanitizarionService.bypassSecurityTrustHtml(wc.content);
    });

  }

  redirect(MouseEvent event,String url){
    showMaxHeightDialog = true;
    redirectUrl = url;
  }

  redirectToNewPage(){
    window.window.location.href = redirectUrl;
  }

  void swithCss(Event e,String g){
    String parrafo = '#'+g+'_p';
    String icono = '#'+g+'_i';
    if(querySelector(parrafo).attributes['class'] == 'oculto'){
      querySelector(parrafo).attributes['class'] = 'visible';
      querySelector(icono).attributes['class'] = 'fa-minus-circle';
    }
    else{
      querySelector(parrafo).attributes['class'] = 'oculto';
      querySelector(icono).attributes['class'] = 'fa-plus-circle';
    }
    //e.classes.toggle('important');
  }
}

@Injectable()
PopupSizeProvider createPopupSizeProvider() {
  return const PercentagePopupSizeProvider();
}

@Directive(selector: '[defaultPopupSizeProvider]', providers: const [
  const Provider(PopupSizeProvider, useFactory: createPopupSizeProvider)
])
class defaultPopupSizeProvider {}