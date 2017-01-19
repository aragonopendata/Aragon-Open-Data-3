import 'dart:async';
import 'dart:html';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:aod3/service/search_service.dart';
import 'package:intl/intl.dart';

@Component(
    selector: 'header',
    templateUrl: 'header.html',
    directives: const [ROUTER_DIRECTIVES],
    providers: const [SearchService])
class HeaderComponent {
  bool opChecked = false;
  final SearchService _SearchService;
  List datasets;
  String valor;

  //Header datos
  String get header_datos => 'Datos';
  String get header_datos_bancodatos => 'Banco de datos';
  String get header_datos_temas => 'Temas';
  String get header_datos_publicadores => 'Publicadores';
  //Header servicios
  String get header_servicios => 'Servicios';
  String get header_servicios_socialdata => 'Social Data';
  String get header_servicios_aragopedia => 'Aragopedia';
  String get header_servicios_presupuestos => 'Presupuestos';
  String get header_servicios_cras => 'CRAs';
  //Header informacion
  String get header_informacion => 'Informacion';
  String get header_informacion_colabora => 'Colabora';
  String get header_informacion_aplicaciones => 'Aplicaciones';
  String get header_informacion_informacion => 'Informacion';
  String get header_informacion_eventos => 'Eventos';
  //Header herramientas
  String get header_herramientas => 'Herramientas';
  String get header_herramientas_campus => 'Campus';
  String get header_herramientas_desarrolladores => 'Desarrolladores';
  String get header_herramientas_apis => 'APIs';
  String get header_herramientas_sparql => 'SPARQL';
  String get header_herramientas_github => 'GITHUB';

  HeaderComponent(this._SearchService);


  ///Cierra el overlay del menu
  void overlayClose() {
    opChecked = false;
    datasets = null;
    print("heigth ${window.screen.height} , width ${window.screen.width}");
  }

  ///Abre el overlay del menu
  void overlayOpen() {
    if (!opChecked) {
      opChecked = true;
    } else {
      overlayClose();
    }
  }

  Future<Null> getDatasets(String input) async {
    datasets = await _SearchService.getDataset(input);
  }

  void goCkan(Event e) {
    e.preventDefault();
    InputElement bText = querySelector('[name="buscador_home"]');
    window.location.assign(
        'http://opendata.aragon.es/catalogo/catalogo.html?q=${bText.value}');
  }

  onKey(dynamic event) {
    getDatasets(event.target.value);
    valor = event.target.value;
  }
}
