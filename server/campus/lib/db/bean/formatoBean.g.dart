// GENERATED CODE - DO NOT MODIFY BY HAND

part of formato.bean;

// **************************************************************************
// Generator: BeanGenerator
// Target: class FormatoBean
// **************************************************************************

abstract class _FormatoBean extends Bean<Formato> {
  _FormatoBean(Adapter adapter) : super(adapter);

  String get tableName => Formato.tableName;

  IntField get id => new IntField('id');

  StrField get nombre => new StrField('nombre');

  Formato fromMap(Map map) {
    Formato model = new Formato();

    model.id = map['id'];
    model.nombre = map['nombre'];

    return model;
  }

  List<SetColumn> toSetColumns(Formato model) {
    List<SetColumn> ret = [];

    ret.add(id.set(model.id));
    ret.add(nombre.set(model.nombre));

    return ret;
  }

  Future<dynamic> create(Formato model) async {
    InsertStatement insert = inserterQ.setMany(toSetColumns(model));
    return execInsert(insert);
  }

  Future<int> update(Formato model) async {
    UpdateStatement update =
        updaterQ.where(id.eq(model.id)).setMany(toSetColumns(model));
    return execUpdate(update);
  }

  Future<Formato> find(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return await execFindOne(find);
  }

  Future<int> delete(int id) async {
    DeleteStatement delete = deleterQ.where(this.id.eq(id));
    return execDelete(delete);
  }

  Future<Stream<Formato>> findAll() async {
    FindStatement find = finderQ;
    return execFind(find);
  }

  Future<Stream<Formato>> findById(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return execFind(find);
  }
}
