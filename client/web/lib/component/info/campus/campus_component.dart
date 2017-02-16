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
  List<Map<String,dynamic>> tiposList;
  List<Map<String,dynamic>> ponentesList;
  List<Map<String,dynamic>> etiquetasList;
  List<Map<String,dynamic>> eventosList;
  List<Map<String,dynamic>> formatosList;
  List<int> pagesList;


  CampusComponent(this._campusService,this._router);

  String isActive(int index){
    if(index == _campusService.currentPage){
     return 'pagination_active';
    }else{
      return '';
    }
  }
  void reprintCampusList() {
    _campusService.initializeCampus().then((List<Map<String,dynamic>> lista) {
      campusList = lista;
      pagesList = _campusService.pagesList;
    });
  }

  @override
  void ngOnInit() {
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

  void moveTo(int id) {
    _campusService.changePage(id).then((List<Map<String,dynamic>> lista) {
      campusList = lista;
    });
  }

  void openCampusItem(Map<String,dynamic> item){
    _campusService.campusItem = item;
    _router.navigateByUrl('campus/${_campusService.campusItem['id']}');
  }

  String get tipoValue => _campusService.tipoValue.toString();

  set tipoValue(String value) {
    _campusService.tipoValue = int.parse(value);
    reprintCampusList();
  }

  String get ponenteValue => _campusService.ponenteValue;

  set ponenteValue(String value) {
    if (value == 'null') {
      _campusService.ponenteValue = null;
    } else {
      _campusService.ponenteValue = value;
    }
    reprintCampusList();
  }

  String get formatoValue => _campusService.formatoValue.toString();

  set formatoValue(String value) {
    _campusService.formatoValue = int.parse(value);
    reprintCampusList();
  }

  String get eventoValue => _campusService.eventoValue.toString();

  set eventoValue(String value) {
    _campusService.eventoValue = int.parse(value);
    reprintCampusList();
  }

  String get etiquetaValue => _campusService.etiquetaValue.toString();

  set etiquetaValue(String value) {
    _campusService.etiquetaValue = int.parse(value);
    reprintCampusList();
  }
}
