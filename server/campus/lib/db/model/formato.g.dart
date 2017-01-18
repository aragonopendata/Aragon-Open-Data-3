// GENERATED CODE - DO NOT MODIFY BY HAND

part of formato.model;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class FormatoJsonSerializer
// **************************************************************************

abstract class _$FormatoJsonSerializer implements MapSerializer<Formato> {
  Map toMap(Formato model) {
    Map ret = new Map();
    if (model != null) {
      if (model.id != null) {
        ret["id"] = model.id;
      }
      if (model.nombre != null) {
        ret["nombre"] = model.nombre;
      }
    }
    return ret;
  }

  Formato fromMap(Map map, {Formato model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Formato) {
      model = createModel();
    }
    model.id = map["id"];
    model.nombre = map["nombre"];
    return model;
  }
}
