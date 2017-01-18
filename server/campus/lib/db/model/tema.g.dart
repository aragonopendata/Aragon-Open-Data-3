// GENERATED CODE - DO NOT MODIFY BY HAND

part of tema.model;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class TemaJsonSerializer
// **************************************************************************

abstract class _$TemaJsonSerializer implements MapSerializer<Tema> {
  Map toMap(Tema model) {
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

  Tema fromMap(Map map, {Tema model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Tema) {
      model = createModel();
    }
    model.id = map["id"];
    model.nombre = map["nombre"];
    return model;
  }
}
