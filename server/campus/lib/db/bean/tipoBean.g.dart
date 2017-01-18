// GENERATED CODE - DO NOT MODIFY BY HAND

part of tipo.bean;

// **************************************************************************
// Generator: BeanGenerator
// Target: class TipoBean
// **************************************************************************

abstract class _TipoBean extends Bean<Tipo> {
  _TipoBean(Adapter adapter) : super(adapter);

  String get tableName => Tipo.tableName;

  IntField get id => new IntField('id');

  StrField get nombre => new StrField('nombre');

  Tipo fromMap(Map map) {
    Tipo model = new Tipo();

    model.id = map['id'];
    model.nombre = map['nombre'];

    return model;
  }

  List<SetColumn> toSetColumns(Tipo model) {
    List<SetColumn> ret = [];

    ret.add(id.set(model.id));
    ret.add(nombre.set(model.nombre));

    return ret;
  }

  Future<dynamic> create(Tipo model) async {
    InsertStatement insert = inserterQ.setMany(toSetColumns(model));
    return execInsert(insert);
  }

  Future<int> update(Tipo model) async {
    UpdateStatement update =
        updaterQ.where(id.eq(model.id)).setMany(toSetColumns(model));
    return execUpdate(update);
  }

  Future<Tipo> find(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return await execFindOne(find);
  }

  Future<int> delete(int id) async {
    DeleteStatement delete = deleterQ.where(this.id.eq(id));
    return execDelete(delete);
  }

  Future<Stream<Tipo>> findAll() async {
    FindStatement find = finderQ;
    return execFind(find);
  }

  Future<Stream<Tipo>> findById(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return execFind(find);
  }
}
