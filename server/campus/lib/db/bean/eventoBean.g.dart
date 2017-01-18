// GENERATED CODE - DO NOT MODIFY BY HAND

part of evento.bean;

// **************************************************************************
// Generator: BeanGenerator
// Target: class EventoBean
// **************************************************************************

abstract class _EventoBean extends Bean<Evento> {
  _EventoBean(Adapter adapter) : super(adapter);

  String get tableName => Evento.tableName;

  IntField get id => new IntField('id');

  StrField get nombre => new StrField('nombre');

  StrField get lugar => new StrField('lugar');

  StrField get descrpcion => new StrField('descrpcion');

  StrField get fecha => new StrField('fecha');

  Evento fromMap(Map map) {
    Evento model = new Evento();

    model.id = map['id'];
    model.nombre = map['nombre'];
    model.lugar = map['lugar'];
    model.descrpcion = map['descrpcion'];
    model.fecha = map['fecha'];

    return model;
  }

  List<SetColumn> toSetColumns(Evento model) {
    List<SetColumn> ret = [];

    ret.add(id.set(model.id));
    ret.add(nombre.set(model.nombre));
    ret.add(lugar.set(model.lugar));
    ret.add(descrpcion.set(model.descrpcion));
    ret.add(fecha.set(model.fecha));

    return ret;
  }

  Future<dynamic> create(Evento model) async {
    InsertStatement insert = inserterQ.setMany(toSetColumns(model));
    return execInsert(insert);
  }

  Future<int> update(Evento model) async {
    UpdateStatement update =
        updaterQ.where(id.eq(model.id)).setMany(toSetColumns(model));
    return execUpdate(update);
  }

  Future<Evento> find(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return await execFindOne(find);
  }

  Future<int> delete(int id) async {
    DeleteStatement delete = deleterQ.where(this.id.eq(id));
    return execDelete(delete);
  }

  Future<Stream<Evento>> findAll() async {
    FindStatement find = finderQ;
    return execFind(find);
  }

  Future<Stream<Evento>> findById(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return execFind(find);
  }
}
