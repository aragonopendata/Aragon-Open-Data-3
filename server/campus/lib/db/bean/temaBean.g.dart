// GENERATED CODE - DO NOT MODIFY BY HAND

part of tema.bean;

// **************************************************************************
// Generator: BeanGenerator
// Target: class TemaBean
// **************************************************************************

abstract class _TemaBean extends Bean<Tema> {
  _TemaBean(Adapter adapter) : super(adapter);

  String get tableName => Tema.tableName;

  IntField get id => new IntField('id');

  StrField get nombre => new StrField('nombre');

  Tema fromMap(Map map) {
    Tema model = new Tema();

    model.id = map['id'];
    model.nombre = map['nombre'];

    return model;
  }

  List<SetColumn> toSetColumns(Tema model) {
    List<SetColumn> ret = [];

    ret.add(id.set(model.id));
    ret.add(nombre.set(model.nombre));

    return ret;
  }

  Future<dynamic> create(Tema model) async {
    InsertStatement insert = inserterQ.setMany(toSetColumns(model));
    return execInsert(insert);
  }

  Future<int> update(Tema model) async {
    UpdateStatement update =
        updaterQ.where(id.eq(model.id)).setMany(toSetColumns(model));
    return execUpdate(update);
  }

  Future<Tema> find(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return await execFindOne(find);
  }

  Future<int> delete(int id) async {
    DeleteStatement delete = deleterQ.where(this.id.eq(id));
    return execDelete(delete);
  }

  Future<Stream<Tema>> findAll() async {
    FindStatement find = finderQ;
    return execFind(find);
  }

  Future<Stream<Tema>> findById(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return execFind(find);
  }
}
