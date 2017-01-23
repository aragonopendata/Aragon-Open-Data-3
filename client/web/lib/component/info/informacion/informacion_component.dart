import 'dart:html';
import 'package:angular2/core.dart';
import 'package:angular2/security.dart';
import 'package:aod3/object/webContent.dart';
import 'package:aod3/service/info_service.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
    selector: 'informacion',
    templateUrl: 'informacion.html',
    directives: const [materialDirectives, defaultPopupSizeProvider,SafeInnerHtmlDirective],
    providers: const [materialProviders,InfoService,DomSanitizationService]
)

class InformacionComponent implements OnInit{
  final InfoService _infoService;
  final DomSanitizationService _domSanitizarionService;
  InformacionComponent(this._infoService,this._domSanitizarionService);
  bool showMaxHeightDialog = false;
  String redirectUrl;

  List webContents;
  @override
  ngOnInit() {
    webContents = _infoService.webContents;
    webContents.forEach((webContents wc){
      wc.content = _domSanitizarionService.bypassSecurityTrustHtml(wc.content);
      print(wc.content);
    });
  }

  redirect(MouseEvent event,String url){
    showMaxHeightDialog = true;
    redirectUrl = url;
  }

  redirectToNewPage(){
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