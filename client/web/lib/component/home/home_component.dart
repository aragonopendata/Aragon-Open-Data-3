import 'package:angular2/core.dart';
//import 'package:angular2/router.dart';
//import 'package:json_object/json_object.dart';
import 'dart:html';
import 'dart:convert';

@Component(
  selector: 'home',
  templateUrl: 'home.html',
)
class HomeComponent {
  void goCkan(Event e) {
    e.preventDefault();
    InputElement bText = querySelector('[name="buscador_home"]');
    //print('bText: ${bText.value}');
    window.location.assign(
        'http://opendata.aragon.es/catalogo/catalogo.html?q=${bText.value}');
  }

  List autocompletar;
  String valor;

  onKey(dynamic event) {
    String url =
        "http://opendata.aragon.es/catalogo/api/2/util/dataset/autocomplete?incomplete=%${event.target.value}%";
    valor = event.target.value;
    HttpRequest.request(url).then((HttpRequest result) {
      Map decoded = JSON.decode(result.response);
      if (valor != "") {
        autocompletar = decoded['ResultSet']['Result'];
      } else {
        autocompletar = null;
      }
    })..catchError((error) => print("ERROR: couldnt get a response from the server: $error"));
  }
}
