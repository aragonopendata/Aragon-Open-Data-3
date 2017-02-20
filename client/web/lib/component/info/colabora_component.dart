import 'package:angular2/core.dart';
import 'dart:html' show window;

@Component(
    selector: 'colabora',
    templateUrl: 'colabora.html')
class ColaboraComponent{
  ///Dimensiones del iframe
  int width = window.innerWidth;
  ///Dimensiones del iframe
  int height = window.innerHeight;
}
