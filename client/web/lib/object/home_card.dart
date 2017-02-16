class HomeCard {
  String imagen;
  String titulo;
  String descripcion;
  String url;
  bool router;

  HomeCard(
      this.imagen, this.titulo, this.descripcion, this.url, this.router);

  @override
  String toString() {
    return 'HomeCard --> Titulo:$titulo Descripcion:$descripcion';
  }
}
