import 'dart:html';
import 'package:angular2/core.dart';
import 'package:aod3/service/info_service.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
    selector: 'informacion',
    templateUrl: 'informacion.html',
    directives: const [materialDirectives, defaultPopupSizeProvider],
    providers: const [materialProviders,InfoService]
)

class InformacionComponent implements OnInit{
  final InfoService _infoService;
  InformacionComponent(this._infoService);
  bool showMaxHeightDialog = false;
  String redirectUrl;

  List webContents;
  @override
  ngOnInit() {
    webContents = _infoService.webContents;
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