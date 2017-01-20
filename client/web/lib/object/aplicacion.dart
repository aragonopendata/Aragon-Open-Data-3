class Aplicacion{
  String _titulo;
  String _descripcion;
  String _url;
  String _imagen;

  Aplicacion(this._titulo, this._descripcion, this._url, this._imagen);

  String get imagen => _imagen;

  set imagen(String value) {
    _imagen = value;
  }

  String get url => _url;

  set url(String value) {
    _url = value;
  }

  String get descripcion => _descripcion;

  set descripcion(String value) {
    _descripcion = value;
  }

  String get titulo => _titulo;

  set titulo(String value) {
    _titulo = value;
  }

  String get facebookShare => "https://www.facebook.com/sharer/sharer.php?u=$url";

  String get twitterShare => "https://twitter.com/intent/tweet?text=$titulo&url=$url";

  String get googleShare => "https://plus.google.com/share?url=$url";


}