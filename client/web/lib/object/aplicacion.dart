class Aplicacion {
  String titulo;
  dynamic descripcion;
  String url;
  String imagen;

  Aplicacion(this.titulo, this.descripcion, this.url, this.imagen);

  String get facebookShare =>
      "https://www.facebook.com/sharer/sharer.php?u=$url";

  String get twitterShare =>
      "https://twitter.com/intent/tweet?text=$titulo&url=$url";

  String get googleShare => "https://plus.google.com/share?url=$url";
}
