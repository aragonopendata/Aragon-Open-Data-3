import 'dart:async';
import 'package:angular2/core.dart';
import 'dart:html';
import 'package:angular2/router.dart';
import 'package:aod3/object/home_element.dart';
import 'package:aod3/service/search_service.dart';
import 'package:aod3/service/home_service.dart';
import 'package:aod3/component/home/tarjeta_home_component.dart';
import 'package:fluri/fluri.dart';

@Component(
    selector: 'home',
    templateUrl: 'home.html',
    directives: const <dynamic>[ROUTER_DIRECTIVES, TarjetaHomeComponent],
    providers: const <Type>[HomeService])
class HomeComponent implements OnInit {
  final SearchService _SearchService;
  final HomeService _HomeService;
  final Router _Router;

  ///Contiene todos los elementos de la home (contenedores y tarjetas)
  List<HomeElement> homeElements;

  ///Lista de datasets de la busqueda
  List<Map<String, String>> datasets = new List();
  String valor;

  HomeComponent(this._SearchService, this._HomeService, this._Router);

  ///Carga la lista de tarejtas al iniciar
  @override
  void ngOnInit() {
    homeElements = _HomeService.getList();
    window.scrollTo(0, 0);
  }

  ///Obtine la lista de datasets desde el servico [SearchService]
  Future<Null> getDatasets(String input, {int limit: 8}) async {
    List<Map<String, String>> datasetsList =
        await _SearchService.getDataset(input, limit: limit);
    if (datasetsList == null) {
      datasetsList = new List();
    }
    datasets = datasetsList;
  }

  void goCkan(Event e) {
    e.preventDefault();
    InputElement bText = querySelector('[name="buscador_home"]');
    Uri uri = new Uri(scheme:'http',path:'/datos/catalogo.html',queryParameters:{'q':bText.value});
    window.location.assign(Uri.encodeFull(uri.toString()));
  }

  void onKey(dynamic event) {
    getDatasets(event.target.value);
    valor = event.target.value;
  }
}
