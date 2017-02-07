import 'home_card.dart';

class HomeElement {
  String _titulo;
  String _descripcion;
  List<HomeCard> _tarjetas;

  HomeElement(this._titulo, this._descripcion, this._tarjetas);

  List<HomeCard> get tarjetas => _tarjetas;

  set tarjetas(List<HomeCard> value) {
    _tarjetas = value;
  }

  String get descripcion => _descripcion;

  set descripcion(String value) {
    _descripcion = value;
  }

  String get titulo => _titulo;

  set titulo(String value) {
    _titulo = value;
  }
}
