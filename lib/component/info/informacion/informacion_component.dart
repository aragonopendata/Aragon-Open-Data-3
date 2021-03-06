import 'dart:html' as html;
import 'package:angular2/platform/common.dart' as common;
import 'package:angular2/core.dart';
import 'package:angular2/security.dart';
import 'package:aod3/service/info_service.dart';
import 'package:angular2/router.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
    selector: 'informacion',
    templateUrl: 'informacion.html',
    directives: const <dynamic>[
      materialDirectives,
      defaultPopupSizeProvider,
      SafeInnerHtmlDirective
    ],
    providers: const <dynamic>[
      InfoService
    ])
class InformacionComponent implements OnInit {
  final InfoService _infoService;
  final DomSanitizationService _domSanitizationService;

  bool showMaxHeightDialog = false;

  ///Url a la cual redireccionar tras aceptarla en el popup
  String redirectUrl;

  ///Ubicacion actual
  String id;
  final RouteParams _routeParams;

  ///Listado de contenidos dinamicos
  List<dynamic> webContents;
  final common.Location _location;
  String urlString;
  String titleString;
  String subTitleString;
  InformacionComponent(this._infoService, this._domSanitizationService,
      this._routeParams, this._location);

  ///Obtiene en que ruta estamos ubicados y carga la informacion de forma dinamica
  @override
  void ngOnInit() {
    id = _routeParams.get('id');
    urlString = _location.path();
    if (urlString.contains('info')) {
      titleString = 'INFO OPEN DATA';
      subTitleString = 'Todo lo necesario para entender Aragón Open Data';
      if (id == 'open-data') {
        webContents = _infoService.iformaciones;
        html.document.title = 'AOD - Información';
        html.querySelector("[name='description']").attributes['content'] =
            'Conoce más sobre el entorno open data y qué hacemos en Aragón.';
      } else if (id == 'eventos') {
        webContents = _infoService.eventos;
        html.document.title = 'AOD - Eventos';
        html.querySelector("[name='description']").attributes['content'] =
            'Agenda y actividades de Aragón Open Data.';
      } else {
        html.window.location.href = "/404";
      }
    } else if (urlString.contains('herramientas')) {
      titleString = 'HERRAMIENTAS';
      subTitleString = 'herramientas';
      if (id == 'sparql') {
        webContents = _infoService.sparql;
        html.document.title = "AOD - SPARQL";
        html.querySelector("[name='description']").attributes['content'] =
            'Obtén datos e información de la Aragopedia a través de este punto de consulta.';
      } else if (id == 'desarrolladores') {
        webContents = _infoService.desarrolladores;
        html.document.title = "AOD - Desarrolladores";
        html.querySelector("[name='description']").attributes['content'] =
            'Estándares, interoperabilidad, estructuras y herramientas en las que se sustenta Aragón Open Data.';
      } else if (id == 'apis') {
        webContents = _infoService.apis;
        html.document.title = 'AOD - Apis';
        html.querySelector("[name='description']").attributes['content'] =
            'Tienes APIs para la búsqueda de datos, para AragoPedia y para el servicio Open Social Data.';
      } else {
        html.window.location.href = "/404";
      }
    } else {
      html.window.location.href = "/404";
    }
    //Transforma los contenidos para que la seguridad de angular no los elimine
    webContents.forEach((dynamic wc) {
      wc.content = _domSanitizationService.bypassSecurityTrustHtml(wc.content);
    });
    html.window.scrollTo(0, 0);
  }

  ///Inicializa un Popup para la redireccion a sitios de terceros
  void redirect(html.MouseEvent event, String url) {
    showMaxHeightDialog = true;
    redirectUrl = url;
  }

  ///Redirige a una pagina externa usnado [redirectUrl]
  void redirectToNewPage() {
    html.window.window.location.href = redirectUrl;
  }

  ///Modifica las clases necesarias para abrir y cerrar los contenedores de informacion
  void switchCss(html.Event e, String g) {
    String parrafo = '#' + g + '_p';
    String icono = '#' + g + '_i';
    if (html.querySelector(parrafo).attributes['class'] == 'oculto') {
      html.querySelector(parrafo).attributes['class'] = 'visible';
      html.querySelector(icono).attributes['class'] = 'fa fa-minus-circle';
    } else {
      html.querySelector(parrafo).attributes['class'] = 'oculto';
      html.querySelector(icono).attributes['class'] = 'fa fa-plus-circle';
    }
  }
}

@Injectable()
PopupSizeProvider createPopupSizeProvider() {
  return const PercentagePopupSizeProvider();
}

@Directive(selector: '[defaultPopupSizeProvider]', providers: const <dynamic>[
  const Provider(PopupSizeProvider, useFactory: createPopupSizeProvider)
])
class defaultPopupSizeProvider {}
