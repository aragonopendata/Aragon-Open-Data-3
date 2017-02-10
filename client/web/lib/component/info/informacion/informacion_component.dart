import 'dart:html';
import 'package:angular2/platform/common.dart' as common_dart;
import 'package:angular2/core.dart';
import 'package:angular2/security.dart';
import 'package:aod3/object/web_content.dart';
import 'package:aod3/service/info_service.dart';
import 'package:angular2/router.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
    selector: 'informacion',
    templateUrl: 'informacion.html',
    directives: const [
      materialDirectives,
      defaultPopupSizeProvider,
      SafeInnerHtmlDirective
    ],
    providers: const [
      InfoService
    ])
class InformacionComponent implements OnInit {
  final InfoService _infoService;
  final DomSanitizationService _domSanitizarionService;

  bool showMaxHeightDialog = false;
  String redirectUrl;
  String id;
  final RouteParams _routeParams;
  List webContents;
  final common_dart.Location _location;
  String urlString;
  String titleString;
  String subTitleString;
  InformacionComponent(this._infoService, this._domSanitizarionService,
      this._routeParams, this._location);
  @override
  ngOnInit() {
    var _id = _routeParams.get('id');
    id = _id.toString();

    urlString = _location.path();
    if (urlString.contains('info')) {
      titleString = 'INFO OPEN DATA';
      subTitleString = 'Todo lo necesario para entender Aragón Open Data';
      if (id == 'informacion') {
        webContents = _infoService.iformaciones;
      } else if (id == 'eventos') {
        webContents = _infoService.eventos;
      } else{
        window.location.href = "http://opendata.aragon.es/404";
      }
    } else if (urlString.contains('herramientas')) {
      titleString = 'HERRAMIENTAS';
      subTitleString = 'herramientas';
      if (id == 'sparql') {
        webContents = _infoService.sparql;
      } else if (id == 'desarrolladores') {
        webContents = _infoService.desarrolladores;
      } else if (id == 'apis') {
        webContents = _infoService.apis;
      } else{
        window.location.href = "http://opendata.aragon.es/404";
      }
    }else{
      window.location.href = "http://opendata.aragon.es/404";
    }
    webContents.forEach((wc) {
      wc.content = _domSanitizarionService.bypassSecurityTrustHtml(wc.content);
    });
  }

  redirect(MouseEvent event, String url) {
    showMaxHeightDialog = true;
    redirectUrl = url;
  }

  redirectToNewPage() {
    window.window.location.href = redirectUrl;
  }

  void swithCss(Event e, String g) {
    String parrafo = '#' + g + '_p';
    String icono = '#' + g + '_i';
    if (querySelector(parrafo).attributes['class'] == 'oculto') {
      querySelector(parrafo).attributes['class'] = 'visible';
      querySelector(icono).attributes['class'] = 'fa fa-minus-circle';
    } else {
      querySelector(parrafo).attributes['class'] = 'oculto';
      querySelector(icono).attributes['class'] = 'fa fa-plus-circle';
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
