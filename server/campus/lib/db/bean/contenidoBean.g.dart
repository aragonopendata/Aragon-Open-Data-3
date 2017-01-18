// GENERATED CODE - DO NOT MODIFY BY HAND

part of contindio.bean;

// **************************************************************************
// Generator: BeanGenerator
// Target: class ContenidoBean
// **************************************************************************

abstract class _ContenidoBean extends Bean<Contenido> {
  _ContenidoBean(Adapter adapter) : super(adapter);

  String get tableName => Contenido.tableName;

  IntField get id => new IntField('id');

  StrField get titulo => new StrField('titulo');

  StrField get descripcion => new StrField('descripcion');

  IntField get formato => new IntField('formato');

  IntField get tipo => new IntField('tipo');

  IntField get evento => new IntField('evento');

  StrField get aparece => new StrField('aparece');

  StrField get url => new StrField('url');

  IntField get plataforma => new IntField('plataforma');

  StrField get thumbnail => new StrField('thumbnail');

  Contenido fromMap(Map map) {
    Contenido model = new Contenido();

    model.id = map['id'];
    model.titulo = map['titulo'];
    model.descripcion = map['descripcion'];
    model.formato = map['formato'];
    model.tipo = map['tipo'];
    model.evento = map['evento'];
    model.aparece = map['aparece'];
    model.url = map['url'];
    model.plataforma = map['plataforma'];
    model.thumbnail = map['thumbnail'];

    return model;
  }

  List<SetColumn> toSetColumns(Contenido model) {
    List<SetColumn> ret = [];

    ret.add(id.set(model.id));
    ret.add(titulo.set(model.titulo));
    ret.add(descripcion.set(model.descripcion));
    ret.add(formato.set(model.formato));
    ret.add(tipo.set(model.tipo));
    ret.add(evento.set(model.evento));
    ret.add(aparece.set(model.aparece));
    ret.add(url.set(model.url));
    ret.add(plataforma.set(model.plataforma));
    ret.add(thumbnail.set(model.thumbnail));

    return ret;
  }

  Future<dynamic> create(Contenido model) async {
    InsertStatement insert = inserterQ.setMany(toSetColumns(model));
    return execInsert(insert);
  }

  Future<int> update(Contenido model) async {
    UpdateStatement update =
        updaterQ.where(id.eq(model.id)).setMany(toSetColumns(model));
    return execUpdate(update);
  }

  Future<Contenido> find(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return await execFindOne(find);
  }

  Future<int> delete(int id) async {
    DeleteStatement delete = deleterQ.where(this.id.eq(id));
    return execDelete(delete);
  }

  Future<Stream<Contenido>> findById(int id) async {
    FindStatement find = finderQ.where(this.id.eq(id));
    return execFind(find);
  }
}
