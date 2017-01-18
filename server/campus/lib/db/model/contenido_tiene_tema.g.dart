// GENERATED CODE - DO NOT MODIFY BY HAND

part of contindio_tiene_tema.model;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class ContenidoTieneTemaJsonSerializer
// **************************************************************************

abstract class _$ContenidoTieneTemaJsonSerializer
    implements MapSerializer<ContenidoTieneTema> {
  Map toMap(ContenidoTieneTema model) {
    Map ret = new Map();
    if (model != null) {
      if (model.id != null) {
        ret["id"] = model.id;
      }
      if (model.contenido != null) {
        ret["contenido"] = model.contenido;
      }
      if (model.tema != null) {
        ret["tema"] = model.tema;
      }
    }
    return ret;
  }

  ContenidoTieneTema fromMap(Map map, {ContenidoTieneTema model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! ContenidoTieneTema) {
      model = createModel();
    }
    model.id = map["id"];
    model.contenido = map["contenido"];
    model.tema = map["tema"];
    return model;
  }
}
