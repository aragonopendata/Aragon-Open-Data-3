// GENERATED CODE - DO NOT MODIFY BY HAND

part of evento.model;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class EventoJsonSerializer
// **************************************************************************

abstract class _$EventoJsonSerializer implements MapSerializer<Evento> {
  Map toMap(Evento model) {
    Map ret = new Map();
    if (model != null) {
      if (model.id != null) {
        ret["id"] = model.id;
      }
      if (model.nombre != null) {
        ret["nombre"] = model.nombre;
      }
      if (model.lugar != null) {
        ret["lugar"] = model.lugar;
      }
      if (model.descrpcion != null) {
        ret["descrpcion"] = model.descrpcion;
      }
      if (model.fecha != null) {
        ret["fecha"] = model.fecha;
      }
    }
    return ret;
  }

  Evento fromMap(Map map, {Evento model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Evento) {
      model = createModel();
    }
    model.id = map["id"];
    model.nombre = map["nombre"];
    model.lugar = map["lugar"];
    model.descrpcion = map["descrpcion"];
    model.fecha = map["fecha"];
    return model;
  }
}
