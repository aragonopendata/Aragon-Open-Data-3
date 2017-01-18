// GENERATED CODE - DO NOT MODIFY BY HAND

part of plataforma.model;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class PlataformaJsonSerializer
// **************************************************************************

abstract class _$PlataformaJsonSerializer implements MapSerializer<Plataforma> {
  Map toMap(Plataforma model) {
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

  Plataforma fromMap(Map map, {Plataforma model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Plataforma) {
      model = createModel();
    }
    model.id = map["id"];
    model.nombre = map["nombre"];
    return model;
  }
}
