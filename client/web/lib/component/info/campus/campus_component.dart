import 'package:angular2/core.dart';
import 'package:aod3/service/campus_service.dart';

@Component(
    selector: 'campus',
    templateUrl: 'campus.html',
    directives: const [],
    providers: const [CampusService])
class CampusComponent implements OnInit{
  final CampusService _campusService;
  List<Map> campusList = new List<Map>();
  List<Map> tiposList;
  List<Map> ponentesList;
  List<Map> etiquetasList;
  List<Map> eventosList;
  List<Map> formatosList;
  int _tipoValue;
  String _ponenteValue;
  int _etiquetaValue;
  int _eventoValue;
  int _formatoValue;

  CampusComponent(this._campusService);

  void reprintCampusList() {
    _campusService.getAllCampus(tipo: _tipoValue, aparece: _ponenteValue,
        tema: _etiquetaValue, evento: _eventoValue, formato: _formatoValue).then((lista){
      campusList = lista;
    });
  }

  @override
  ngOnInit() {
    _campusService.getAllCampus().then((lista){
      campusList=lista;
    });
    _campusService.getTipos().then((lista){
      tiposList = lista;
    });
    _campusService.getEventos().then((lista){
      eventosList = lista;
    });
    _campusService.getEtiquetas().then((lista){
      etiquetasList = lista;
    });
    _campusService.getFormatos().then((lista){
      formatosList = lista;
    });
    _campusService.getPonentes().then((lista){
      ponentesList = lista;
    });
  }

  int get tipoValue => _tipoValue;

  set tipoValue(int value) {
    _tipoValue = value;
    reprintCampusList();
  }

  String get ponenteValue => _ponenteValue;

  set ponenteValue(String value) {
    if (value == 'null'){
      _ponenteValue = null;
    } else {
      _ponenteValue = value;
    }
    reprintCampusList();
  }

  int get formatoValue => _formatoValue;

  set formatoValue(int value) {
    _formatoValue = value;
    reprintCampusList();
  }

  int get eventoValue => _eventoValue;

  set eventoValue(int value) {
    _eventoValue = value;
    reprintCampusList();
  }

  int get etiquetaValue => _etiquetaValue;

  set etiquetaValue(int value) {
    _etiquetaValue = value;
    reprintCampusList();
  }
}
