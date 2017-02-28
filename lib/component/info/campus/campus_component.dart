import 'dart:html';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:aod3/service/campus_service.dart';

@Component(
    selector: 'campus',
    templateUrl: 'campus.html',
)
class CampusComponent implements OnInit {
  final CampusService _campusService;
  final Router _router;
  List<Map<String,dynamic>> campusList = new List<Map<String,dynamic>>();
  ///Lista de todos los tipos existentes
  List<Map<String,dynamic>> tiposList;
  ///Lista de todos los ponentes existentes
  List<Map<String,dynamic>> ponentesList;
  ///Lista de todas las etiquetas existentes
  List<Map<String,dynamic>> etiquetasList;
  ///Lista de todos los eventos existentes
  List<Map<String,dynamic>> eventosList;
  ///Lista de todos los formatos existentes
  List<Map<String,dynamic>> formatosList;
  ///Lista de todas las paginas disponibles
  List<num> pagesList;


  CampusComponent(this._campusService,this._router);

  ///Devuelve la clase ```pagination_active``` si pa pagina coincide con la pagina actual
  String isActive(num index){
    if(index == _campusService.currentPage){
     return 'pagination_active';
    }else{
      return '';
    }
  }
  ///Vuelve a cargar [campusList] y [pagesList] desde el servicio
  void reprintCampusList() {
    _campusService.initializeCampus().then((List<Map<String,dynamic>> lista) {
      campusList = lista;
      pagesList = _campusService.pagesList;
    });
  }

  ///Carga inicial de campus, carga la primera pagina inicial y la lista de filtros
  ///
  /// Si habia un filtro inicializado anteriormente se conservara siempre y cuando [_campusService] no se haya destruido
  @override
  void ngOnInit() {
    document.title = "AOD - AOD CAMPUS";
    querySelector("[name='description']").attributes['content'] = 'Contenido ofrecido para que aprendas y te formes a través de nuestros materiales y tutoriales.';
    _campusService.initializeCampus().then((List<Map<String,dynamic>> lista) {
      campusList = lista;
      pagesList = _campusService.pagesList;
    });
    _campusService.getTipos().then((List<Map<String,dynamic>> lista) {
      tiposList = lista;
    });
    _campusService.getEventos().then((List<Map<String,dynamic>> lista) {
      eventosList = lista;
    });
    _campusService.getEtiquetas().then((List<Map<String,dynamic>> lista) {
      etiquetasList = lista;
    });
    _campusService.getFormatos().then((List<Map<String,dynamic>> lista) {
      formatosList = lista;
    });
    _campusService.getPonentes().then((List<Map<String,dynamic>> lista) {
      ponentesList = lista;
    });
  }

  ///Nos mueve a la pagina indicada
  void moveTo(num id) {
    _campusService.changePage(id).then((List<Map<String,dynamic>> lista) {
      campusList = lista;
    });
  }

  ///Abre un item
  void openCampusItem(Map<String,dynamic> item){
    _campusService.campusItem = item;
    _router.navigateByUrl('campus/${_campusService.campusItem['id']}');
  }

  String get tipoValue => _campusService.tipoValue.toString();

  ///Cambia el filtro de tipo y vuelve a obtener [campusList]
  set tipoValue(String value) {
    _campusService.tipoValue = num.parse(value);
    reprintCampusList();
  }

  String get ponenteValue => _campusService.ponenteValue;

  ///Cambia el filtro de ponente y vuelve a obtener [campusList]
  set ponenteValue(String value) {
    if (value == 'null') {
      _campusService.ponenteValue = null;
    } else {
      _campusService.ponenteValue = value;
    }
    reprintCampusList();
  }

  String get formatoValue => _campusService.formatoValue.toString();

  ///Cambia el filtro de formato y vuelve a obtener [campusList]
  set formatoValue(String value) {
    _campusService.formatoValue = num.parse(value);
    reprintCampusList();
  }

  String get eventoValue => _campusService.eventoValue.toString();

  ///Cambia el filtro de evento y vuelve a obtener [campusList]
  set eventoValue(String value) {
    _campusService.eventoValue = num.parse(value);
    reprintCampusList();
  }

  String get etiquetaValue => _campusService.etiquetaValue.toString();

  ///Cambia el filtro de etiqueta y vuelve a obtener [campusList]
  set etiquetaValue(String value) {
    _campusService.etiquetaValue = num.parse(value);
    reprintCampusList();
  }

  num get currentPage => _campusService.currentPage;
}
