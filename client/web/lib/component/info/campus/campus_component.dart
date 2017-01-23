import 'package:angular2/core.dart';
import 'package:aod3/service/campus_service.dart';

@Component(
    selector: 'campus',
    templateUrl: 'campus.html',
    providers: const [CampusService])
class CampusComponent implements OnInit{
  final CampusService _campusService;
  CampusComponent(this._campusService);
  List<Map> campusList;

  @override
  ngOnInit() {
    _campusService.getAllCampus().then((lista){
      print(lista);
      campusList = lista;
    });
  }
}
