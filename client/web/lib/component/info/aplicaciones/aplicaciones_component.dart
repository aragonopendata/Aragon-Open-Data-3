import 'dart:html';
import 'package:angular2/core.dart';
import 'package:angular2/security.dart';
import 'package:aod3/object/aplicacion.dart';
import 'package:aod3/service/info_service.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
    selector: 'aplicaciones',
    templateUrl: 'aplicaciones.html',
    directives: const [
      materialDirectives,
      defaultPopupSizeProvider,
      SafeInnerHtmlDirective
    ],
    providers: const [
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
  @override
  void ngOnInit() {
    aplicaciones = _infoService.aplicaciones;
    aplicaciones.forEach((Aplicacion aplicacion) {
      aplicacion.descripcion = _domSanitizarionService
          .bypassSecurityTrustHtml(aplicacion.descripcion);
    });
  }

  void redirect(MouseEvent event, String url) {
    showMaxHeightDialog = true;
    redirectUrl = url;
  }

  void redirectToNewPage() {
    window.window.location.href = redirectUrl;
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
