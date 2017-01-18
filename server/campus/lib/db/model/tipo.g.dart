// GENERATED CODE - DO NOT MODIFY BY HAND

part of tipo.model;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class TipoJsonSerializer
// **************************************************************************

abstract class _$TipoJsonSerializer implements MapSerializer<Tipo> {
  Map toMap(Tipo model) {
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

  Tipo fromMap(Map map, {Tipo model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Tipo) {
      model = createModel();
    }
    model.id = map["id"];
    model.nombre = map["nombre"];
    return model;
  }
}
