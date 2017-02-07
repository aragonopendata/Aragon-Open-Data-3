import 'package:angular2/core.dart';
import 'package:aod3/service/campus_service.dart';

@Component(
    selector: 'campus',
    templateUrl: 'campus.html',
    directives: const [],
    providers: const [CampusService])
class CampusComponent implements OnInit, OnDestroy {
  final CampusService _campusService;
  List<Map> campusList = new List<Map>();
  List<Map> tiposList;
  List<Map> ponentesList;
  List<Map> etiquetasList;
  List<Map> eventosList;
  List<Map> formatosList;
  List<int> pagesList;

  CampusComponent(this._campusService);

  void reprintCampusList() {
    _campusService.initializeCampus().then((lista) {
      campusList = lista;
      pagesList = _campusService.pagesList;
    });
  }

  @override
  ngOnInit() {
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

  @override
  ngOnDestroy() {}

  void moveTo(int id) {
    _campusService.changePage(id).then((lista) {
      campusList = lista;
    });
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
