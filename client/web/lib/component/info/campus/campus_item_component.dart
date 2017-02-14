import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:angular2/security.dart';
import 'package:aod3/service/campus_service.dart';

@Component(
  selector: 'campus-item',
  directives:  const [SafeInnerHtmlDirective],
  templateUrl: 'campus_item.html',
)
class CampusItemComponent implements OnInit,OnDestroy {

  final CampusService _campusService;
  final RouteParams _routeParams;
  final Router _router;
  CampusItemComponent(this._campusService,this._routeParams,this._domSanitizarionService, this._router);
  Map get item => _campusService.campusItem;
  final DomSanitizationService _domSanitizarionService;
  SafeHtml hola;
  SafeHtml get url => getElement();

  SafeHtml getElement() {
    switch(item['formato']['id']){
      case 1:
        return _domSanitizarionService.bypassSecurityTrustHtml("<img src='${item['url']}'/>");
        break;
      case 2:
        return _domSanitizarionService.bypassSecurityTrustHtml("<audio src='${item['url']}' title='La apuesta aragonesa por el Open Data llega a un foro internacional' preload='auto' controls='controls'></audio>");
        break;
      case 3:
      case 4:
        return _domSanitizarionService.bypassSecurityTrustHtml("<iframe src='${item['url']}' width='978' height='550' frameborder='0' marginwidth='0' marginheight='0' scrolling='no' style='border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;' allowfullscreen >PRUEBA</iframe>");
        break;
      default:
        return null;
        break;
    }
  }

  void returnToCampusWith(String element, int etiqueta){
    _campusService.clearSearch();
    switch(element){
      case 'aparece':
        _campusService.ponenteValue = item['aparece'];
        break;
      case 'evento':
        _campusService.eventoValue = item['evento']['id'];
        break;
      case 'etiqueta':
        _campusService.etiquetaValue = etiqueta;
        break;
    }
    _router.navigateByUrl("/campus");
  }


  @override
  ngOnDestroy() {
    _campusService.campusItem.clear();
  }

  @override
  ngOnInit(){
    if(_campusService.campusItem.isEmpty) _campusService.getItem(_routeParams.get('id'));

    hola = _domSanitizarionService.bypassSecurityTrustHtml("<a href='http://www.google.com'>PRUEBA</a>");
  }
}