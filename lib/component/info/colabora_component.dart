import 'package:angular2/core.dart';
import 'dart:html' show document, querySelector, window;

@Component(
    selector: 'colabora',
    templateUrl: 'colabora.html')
class ColaboraComponent implements OnInit{
  ///Dimensiones del iframe
  int width = window.innerWidth;
  ///Dimensiones del iframe
  int height = window.innerHeight;
  @override
  ngOnInit() {
    document.title = 'AOD - Colabora';
    querySelector("[name='description']").attributes['content'] = '';
  }
}
