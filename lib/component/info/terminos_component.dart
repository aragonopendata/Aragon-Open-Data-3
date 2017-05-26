import 'package:angular2/core.dart';
import 'dart:html' show document, querySelector, window;

@Component(selector: 'terminos', templateUrl: 'terminos.html')
class TerminosComponent implements OnInit {
  @override
  ngOnInit() {
  	window.scrollTo(0, 0);
    document.title = 'AOD - Termnos de Uso';
  }
}
