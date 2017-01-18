// GENERATED CODE - DO NOT MODIFY BY HAND

part of contindio_tiene_tema.bean;

// **************************************************************************
// Generator: BeanGenerator
// Target: class ContenidoTieneTemaBean
// **************************************************************************

abstract class _ContenidoTieneTemaBean extends Bean<ContenidoTieneTema> {
  _ContenidoTieneTemaBean(Adapter adapter) : super(adapter);

  String get tableName => ContenidoTieneTema.tableName;

  IntField get id => new IntField('id');

  IntField get contenido => new IntField('contenido');

  IntField get tema => new IntField('tema');

  ContenidoTieneTema fromMap(Map map) {
    ContenidoTieneTema model = new ContenidoTieneTema();

    model.id = map['id'];
    model.contenido = map['contenido'];
    model.tema = map['tema'];

    return model;
  }

  List<SetColumn> toSetColumns(ContenidoTieneTema model) {
    List<SetColumn> ret = [];

    ret.add(id.set(model.id));
    ret.add(contenido.set(model.contenido));
    ret.add(tema.set(model.tema));

    return ret;
  }

  Future<dynamic> create(ContenidoTieneTema model) async {
    InsertStatement insert = inserterQ.setMany(toSetColumns(model));
    return execInsert(insert);
  }

  Future<int> update(ContenidoTieneTema model) async {
    UpdateStatement update =
        updaterQ.where(id.eq(model.id)).setMany(toSetColumns(model));
    return execUpdate(update);
  }

  Future<ContenidoTieneTema> find(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return await execFindOne(find);
  }

  Future<int> delete(int id) async {
    DeleteStatement delete = deleterQ.where(this.id.eq(id));
    return execDelete(delete);
  }

  Future<Stream<ContenidoTieneTema>> findAll() async {
    FindStatement find = finderQ;
    return execFind(find);
  }

  Future<Stream<ContenidoTieneTema>> findById(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return execFind(find);
  }

  Future<Stream<ContenidoTieneTema>> findTemaFromContenido(
      int contenido) async {
    FindStatement find = finderQ.where(this.contenido.eq(contenido));
    return execFind(find);
  }
}
