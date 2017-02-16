import 'package:angular2/core.dart';
import 'dart:html' show window;

@Component(
    selector: 'colabora',
    templateUrl: 'colabora.html')
class ColaboraComponent{
  int width = window.innerWidth;
  int height = window.innerHeight;
}
