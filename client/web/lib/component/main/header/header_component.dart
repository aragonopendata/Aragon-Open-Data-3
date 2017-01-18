import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:intl/intl.dart';

@Component(
    selector: 'header',
    templateUrl: 'header.html',
    directives: const [ROUTER_DIRECTIVES],
)

class HeaderComponent{
  bool opChecked = false;

  //Header datos
  String get header_datos => Intl.message('Datos',name:"header_datos",args: [],desc: "Header >> datos");
  String get header_datos_bancodatos => Intl.message('Banco de datos',name:"header_datos_bancodatos",args: [],desc: "Header >> datos >> banco de datos");
  String get header_datos_temas => Intl.message('Temas',name:"header_datos_publicadores",args: [],desc: "Header >> datos >> temas");
  String get header_datos_publicadores => Intl.message('Publicadores',name:"header_datos_temas",args: [],desc: "Header >> datos >> publicadores");
  //Header servicios
  String get header_servicios => Intl.message('Servicios',name:"header_servicios",args: [],desc: "Header >> servicios");
  String get header_servicios_socialdata => Intl.message('Social Data',name:"header_servicios_socialdata",args: [],desc: "Header >> servicios >> socialdata");
  String get header_servicios_aragopedia => Intl.message('Aragopedia',name:"header_servicios_aragopedia",args: [],desc: "Header >> servicios >> aragopedia");
  String get header_servicios_presupuestos => Intl.message('Presupuestos',name:"header_servicios_presupuestos",args: [],desc: "Header >> servicios >> presupuestos");
  String get header_servicios_cras => Intl.message('CRAs',name:"header_servicios_cras",args: [],desc: "Header >> servicios >> cras");
  //Header informacion
  String get header_informacion => Intl.message('Informacion',name:"header_informacion",args: [],desc: "Header >> informacion");
  String get header_informacion_colabora => Intl.message('Colabora',name:"header_informacion_colabora",args: [],desc: "Header >> informacion >> colabora");
  String get header_informacion_aplicaciones => Intl.message('Aplicaciones',name:"header_informacion_aplicaciones",args: [],desc: "Header >> informacion >> aplicaciones");
  String get header_informacion_informacion => Intl.message('Informacion',name:"header_informacion_informacion",args: [],desc: "Header >> informacion >> informacion");
  String get header_informacion_eventos => Intl.message('Eventos',name:"header_informacion_eventos",args: [],desc: "Header >> informacion >> eventos");
  //Header herramientas
  String get header_herramientas => Intl.message('Herramientas',name:"header_herramientas",args: [],desc: "Header >> herramientas");
  String get header_herramientas_campus => Intl.message('Campus',name:"header_herramientas_campus",args: [],desc: "Header >> herramientas >> campus");
  String get header_herramientas_desarrolladores => Intl.message('Desarrolladores',name:"header_herramientas_desarrolladores",args: [],desc: "Header >> herramientas >> desarrolladores");
  String get header_herramientas_apis => Intl.message('APIs',name:"header_herramientas_apis",args: [],desc: "Header >> herramientas >> api");
  String get header_herramientas_sparql => Intl.message('SPARQL',name:"header_herramientas_sparql",args: [],desc: "Header >> herramientas >> sparql");
  String get header_herramientas_github => Intl.message('GITHUB',name:"header_herramientas_github",args: [],desc: "Header >> herramientas >> github");

  /**
   * Cierra el overlay del menu
   */
  void  overlayClose(){
    opChecked = false;
  }

  /**
   * Abre el overlay del menu
   */
  void overlayOpen(){
    if(!opChecked) {
      opChecked = true;
    }else{
      overlayClose();
    }
  }
}