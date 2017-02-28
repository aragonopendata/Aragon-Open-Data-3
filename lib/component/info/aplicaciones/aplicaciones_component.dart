import 'dart:html';
import 'package:angular2/core.dart';
import 'package:angular2/security.dart';
import 'package:aod3/object/aplicacion.dart';
import 'package:aod3/service/info_service.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
    selector: 'aplicaciones',
    templateUrl: 'aplicaciones.html',
    directives: const <dynamic>[
      materialDirectives,
      defaultPopupSizeProvider,
      SafeInnerHtmlDirective
    ],
    providers: const <dynamic>[
      materialProviders,
      InfoService,
      DomSanitizationService
    ])
class AplicacionesComponent implements OnInit {
  final InfoService _infoService;
  final DomSanitizationService _domSanitizarionService;
  AplicacionesComponent(this._infoService, this._domSanitizarionService);
  bool showMaxHeightDialog = false;
  String redirectUrl;
  SafeHtml utl;
  List<Aplicacion> aplicaciones;

  ///Carga la lista de aplicaciones y las arregla para evitar el sanitizador
  @override
  void ngOnInit() {
    document.title = "AOD - Aplicaciones";
    querySelector("[name='description']").attributes['content'] = 'Otras aplicaciones que aprovechan y reutilizan nuestros datos para ofrecértelos.';
    aplicaciones = _infoService.aplicaciones;
    aplicaciones.forEach((Aplicacion aplicacion) {
      aplicacion.descripcion = _domSanitizarionService
          .bypassSecurityTrustHtml(aplicacion.descripcion);
    });
  }

  ///Inicializa un Popup para la redireccion a sitios de terceros
  void redirect(MouseEvent event, String url) {
    showMaxHeightDialog = true;
    redirectUrl = url;
  }


  ///Redirige a una pagina externa usnado [redirectUrl]
  void redirectToNewPage() {
    window.window.location.href = redirectUrl;
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
