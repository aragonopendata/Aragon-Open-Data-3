import 'dart:async';
import 'package:angular2/core.dart';
import 'dart:html';
import 'package:angular2/router.dart';
import 'package:aod3/object/home_element.dart';
import 'package:aod3/service/search_service.dart';
import 'package:aod3/service/home_service.dart';
import 'package:aod3/component/home/tarjeta_home_component.dart';

@Component(
    selector: 'home',
    templateUrl: 'home.html',
    directives: const [ROUTER_DIRECTIVES, TarjetaHomeComponent],
    providers: const [HomeService])
class HomeComponent implements OnInit {
  final SearchService _SearchService;
  final HomeService _HomeService;
  List<HomeElement> homeElements;
  List datasets;
  String valor;
  final Router _router;

  HomeComponent(this._router, this._SearchService, this._HomeService);

  @override
  void ngOnInit() {
    homeElements = _HomeService.getList();
  }

  Future<Null> getDatasets(String input, {int limit: 8}) async {
    datasets = await _SearchService.getDataset(input, limit: limit);
  }

  void goCkan(Event e) {
    e.preventDefault();
    InputElement bText = querySelector('[name="buscador_home"]');
    window.location.assign(
        'http://opendata.aragon.es/catalogo/catalogo.html?q=${bText.value}');
  }

  void onKey(dynamic event) {
    getDatasets(event.target.value);
    valor = event.target.value;
  }
}
