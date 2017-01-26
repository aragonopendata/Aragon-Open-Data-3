import 'package:angular2/core.dart';
import 'package:aod3/service/campus_service.dart';

@Component(
    selector: 'campus',
    templateUrl: 'campus.html',
    directives: const [],
    providers: const [CampusService])
class CampusComponent implements OnInit{
  final CampusService _campusService;
  CampusComponent(this._campusService);
  List<Map> campusList;
  List<Map> tiposList;
  int tipoValue;

  prueba(){
    print(tipoValue);
  }

  @override
  ngOnInit() {
    _campusService.getAllCampus().then((lista){
      campusList = lista;
    });
    _campusService.getTipos().then((lista){
      tiposList = lista;
    });
  }
}
