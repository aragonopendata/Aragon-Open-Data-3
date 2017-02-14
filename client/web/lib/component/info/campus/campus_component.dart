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
    };
  }
  void reprintCampusList() {
    _campusService.initializeCampus().then((List<Map<String,dynamic>> lista) {
      campusList = lista;
      pagesList = _campusService.pagesList;
    });
  }

  @override
  void ngOnInit() {
    _campusService.initializeCampus().then((lista) {
      campusList = lista;
      pagesList = _campusService.pagesList;
    });
    _campusService.getTipos().then((lista) {
      tiposList = lista;
    });
    _campusService.getEventos().then((lista) {
      eventosList = lista;
    });
    _campusService.getEtiquetas().then((lista) {
      etiquetasList = lista;
    });
    _campusService.getFormatos().then((lista) {
      formatosList = lista;
    });
    _campusService.getPonentes().then((lista) {
      ponentesList = lista;
    });
  }

  void moveTo(int id) {
    _campusService.changePage(id).then((lista) {
      campusList = lista;
    });
  }

  void openCampusItem(Map<String,dynamic> item){
    _campusService.campusItem = item;
    _router.navigateByUrl('campus/${_campusService.campusItem['id']}');
  }

  int get tipoValue => _campusService.tipoValue;

  set tipoValue(int value) {
    _campusService.tipoValue = value;
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

  int get formatoValue => _campusService.formatoValue;

  set formatoValue(int value) {
    _campusService.formatoValue = value;
    reprintCampusList();
  }

  int get eventoValue => _campusService.eventoValue;

  set eventoValue(int value) {
    _campusService.eventoValue = value;
    reprintCampusList();
  }

  int get etiquetaValue => _campusService.etiquetaValue;

  set etiquetaValue(int value) {
    _campusService.etiquetaValue = value;
    reprintCampusList();
  }
}
