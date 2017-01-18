// GENERATED CODE - DO NOT MODIFY BY HAND

part of contindio.model;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class ContenidoJsonSerializer
// **************************************************************************

abstract class _$ContenidoJsonSerializer implements MapSerializer<Contenido> {
  Map toMap(Contenido model) {
    Map ret = new Map();
    if (model != null) {
      if (model.id != null) {
        ret["id"] = model.id;
      }
      if (model.titulo != null) {
        ret["titulo"] = model.titulo;
      }
      if (model.descripcion != null) {
        ret["descripcion"] = model.descripcion;
      }
      if (model.formato != null) {
        ret["formato"] = model.formato;
      }
      if (model.tipo != null) {
        ret["tipo"] = model.tipo;
      }
      if (model.evento != null) {
        ret["evento"] = model.evento;
      }
      if (model.aparece != null) {
        ret["aparece"] = model.aparece;
      }
      if (model.url != null) {
        ret["url"] = model.url;
      }
      if (model.plataforma != null) {
        ret["plataforma"] = model.plataforma;
      }
      if (model.thumbnail != null) {
        ret["thumbnail"] = model.thumbnail;
      }
    }
    return ret;
  }

  Contenido fromMap(Map map, {Contenido model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Contenido) {
      model = createModel();
    }
    model.id = map["id"];
    model.titulo = map["titulo"];
    model.descripcion = map["descripcion"];
    model.formato = map["formato"];
    model.tipo = map["tipo"];
    model.evento = map["evento"];
    model.aparece = map["aparece"];
    model.url = map["url"];
    model.plataforma = map["plataforma"];
    model.thumbnail = map["thumbnail"];
    return model;
  }
}
