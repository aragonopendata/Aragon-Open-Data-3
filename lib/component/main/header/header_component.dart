import 'dart:async';
import 'dart:html';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:aod3/service/search_service.dart';

@Component(
    selector: 'header',
    templateUrl: 'header.html',
    directives: const <dynamic>[ROUTER_DIRECTIVES],
    providers: const <dynamic>[])
class HeaderComponent {
  ///Indica si el menu esta abierto(true) o cerrado(false)
  bool opChecked = false;
  ///Indica si estas haciendo hover(true) o no(false) sobre el menu
  bool hover_menu = false;

  final SearchService _SearchService;
  ///Lista de los datasets que se muestran en la busqueda
  List<Map<String,String>> datasets;
  String valor;

  HeaderComponent(this._SearchService);

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

  String get boton_menu => botonMenuImage();
  String get logo => logoImage();

  ///Cierra el overlay del menu
  void overlayClose() {
    opChecked = false;
    datasets = null;
  }

  ///Abre el overlay del menu
  void overlayOpen() {
    if (!opChecked) {
      opChecked = true;
    } else {
      overlayClose();
    }
  }


  ///Servicio que se encarga de realizar todas las llamadas a la api de CKAN de ```aragon.opendata.es```
  Future<Null> getDatasets(String input, {int limit: 8}) async {
    datasets = await _SearchService.getDataset(input, limit: limit);
  }

  ///Redirecciona a la pagina de CKAN para realizar la busqueda desde ella
  void goCkan(Event e) {
    e.preventDefault();
    InputElement bText = querySelector('[name="buscador_home"]');
    window.location.assign(
        'http://opendata.aragon.es/catalogo/catalogo.html?q=${bText.value}');
  }

  void onKey(dynamic event) {
    getDatasets(event.target.value, limit: 4);
    valor = event.target.value;
  }

  ///Devuelve que imagen usar dependiendo de diferentes condiciones
  ///
  /// 1. Menu cerrado + no hover
  /// 2. Menu cerrado + hover
  /// 3. Menu abierto + no hover
  /// 4. Menu abierto + hover
  String botonMenuImage() {
    if(opChecked){
      if(hover_menu){
        return "/images/home/nav-bar/Boton-Salir-Modo-Responsive-ON.png";
      }else{
        return "/images/home/nav-bar/Boton-Salir-Menu-Responsive-OFF.png";
      }
    }else{
      if(hover_menu){
        return "/images/home/nav-bar/Boton-Menu-Responsive-ON.jpg";
      }else{
        return "/images/home/nav-bar/Boton-Menu-Responsive-OFF.png";
      }
    }
  }

  ///Hover sobre el menu
  void boton_menu_over(){
    hover_menu = true;
  }

  ///No hover sobre el menu
  void boton_menu_out(){
    hover_menu = false;
  }

  ///Devuelve que imagen usar dependiendo de diferentes condiciones
  ///
  /// 1. Menu cerrado
  /// 2. Menu abierto
  String logoImage() {
    if(opChecked){
      return "/images/home/nav-bar/AOD-Logo-Responsive.png";
    }else{
      return "/images/home/nav-bar/AOD-Logo.png";
    }
  }
}
