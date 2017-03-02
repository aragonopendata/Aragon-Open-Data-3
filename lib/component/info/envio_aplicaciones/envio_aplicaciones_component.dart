import 'dart:html';
import 'package:angular2/core.dart';

@Component(
    selector: 'envioAplicaciones', templateUrl: 'envio_aplicaciones.html')
class EnvioAplicacionesComponent implements OnInit {
  @override
  ngOnInit() {
    document.title = "AOD - Envio Aplicaciones";
    window.scrollTo(0, 0);
  }
}
