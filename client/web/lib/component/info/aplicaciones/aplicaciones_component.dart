import 'package:angular2/core.dart';
import 'package:aod3/service/info_service.dart';

@Component(
    selector: 'aplicaciones',
    templateUrl: 'aplicaciones.html',
    providers: const [InfoService]
)

class AplicacionesComponent implements OnInit{
  final InfoService _infoService;
  AplicacionesComponent(this._infoService);

  List aplicaciones;
  @override
  ngOnInit() {
    aplicaciones = _infoService.aplicaciones;
  }
}
