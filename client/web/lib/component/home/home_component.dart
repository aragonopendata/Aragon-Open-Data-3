import 'dart:async';
import 'package:angular2/core.dart';
//import 'package:angular2/router.dart';
//import 'package:json_object/json_object.dart';
import 'dart:html';
import 'dart:convert';
import 'package:aod3/service/search_service.dart';

@Component(
    selector: 'home',
    templateUrl: 'home.html',
    providers: const [SearchService])
class HomeComponent {
  final SearchService _SearchService;
  List datasets;
  String valor;

  HomeComponent(this._SearchService);

  Future<Null> getHeroes(String input) async {
    datasets = await _SearchService.getDataset(input);
  }

  void goCkan(Event e) {
    e.preventDefault();
    InputElement bText = querySelector('[name="buscador_home"]');
    window.location.assign(
        'http://opendata.aragon.es/catalogo/catalogo.html?q=${bText.value}');
  }

  onKey(dynamic event) {
    getHeroes(event.target.value);
    valor = event.target.value;
  }
}
