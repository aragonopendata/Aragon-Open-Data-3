// GENERATED CODE - DO NOT MODIFY BY HAND

part of plataforma.bean;

// **************************************************************************
// Generator: BeanGenerator
// Target: class PlataformaBean
// **************************************************************************

abstract class _PlataformaBean extends Bean<Plataforma> {
  _PlataformaBean(Adapter adapter) : super(adapter);

  String get tableName => Plataforma.tableName;

  IntField get id => new IntField('id');

  StrField get nombre => new StrField('nombre');

  Plataforma fromMap(Map map) {
    Plataforma model = new Plataforma();

    model.id = map['id'];
    model.nombre = map['nombre'];

    return model;
  }

  List<SetColumn> toSetColumns(Plataforma model) {
    List<SetColumn> ret = [];

    ret.add(id.set(model.id));
    ret.add(nombre.set(model.nombre));

    return ret;
  }

  Future<dynamic> create(Plataforma model) async {
    InsertStatement insert = inserterQ.setMany(toSetColumns(model));
    return execInsert(insert);
  }

  Future<int> update(Plataforma model) async {
    UpdateStatement update =
        updaterQ.where(id.eq(model.id)).setMany(toSetColumns(model));
    return execUpdate(update);
  }

  Future<Plataforma> find(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return await execFindOne(find);
  }

  Future<int> delete(int id) async {
    DeleteStatement delete = deleterQ.where(this.id.eq(id));
    return execDelete(delete);
  }

  Future<Stream<Plataforma>> findAll() async {
    FindStatement find = finderQ;
    return execFind(find);
  }

  Future<Stream<Plataforma>> findById(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return execFind(find);
  }
}
