class HomeCard{
  String _imagen;
  String _titulo;
  String _descripcion;
  String _url;
  bool _router;

  HomeCard(this._imagen, this._titulo, this._descripcion, this._url,
      this._router);

  bool get router => _router;

  set router(bool value) {
    _router = value;
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

  String get imagen => _imagen;

  set imagen(String value) {
    _imagen = value;
  }

  @override
  toString(){
    return 'HomeCard --> Titulo:$titulo Descripcion:$descripcion';
  }

}