// GENERATED CODE - DO NOT MODIFY BY HAND

part of api;

// **************************************************************************
// Generator: RouteGroupGenerator
// Target: class ContenidoRouteGroup
// **************************************************************************

abstract class _$JaguarContenidoRouteGroup implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[
    const Get(),
    const Get(path: '/:id', pathRegEx: const {'id': r'^[0-9]+$'})
  ];

  Future<List<Map<dynamic, dynamic>>> getAll(Connection db,
      {int offset: 0,
      int limit: 10,
      int formato,
      int evento,
      int plataforma,
      String aparece,
      int tema});

  Future<List<dynamic>> getById(Connection db, int id);

  Future<bool> handleRequest(HttpRequest request, {String prefix: ''}) async {
    prefix += '/contenido';
    PathParams pathParams = new PathParams();
    bool match = false;
    QueryParams queryParams = new QueryParams(request.uri.queryParameters);

//Handler for getAll
    match =
        routes[0].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeToJson iEncodeToJson;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeToJson = new WrapEncodeToJson().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getAll(
          rPostgresDb,
          offset: stringToInt(queryParams.getField('offset')) ?? 0,
          limit: stringToInt(queryParams.getField('limit')) ?? 10,
          formato: stringToInt(queryParams.getField('formato')),
          evento: stringToInt(queryParams.getField('evento')),
          plataforma: stringToInt(queryParams.getField('plataforma')),
          aparece: (queryParams.getField('aparece')),
          tema: stringToInt(queryParams.getField('tema')),
        );
        Response<String> rRouteResponse1 = iEncodeToJson.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeToJson?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

//Handler for getById
    match =
        routes[1].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeMapToJson iEncodeMapToJson;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeMapToJson = new WrapEncodeMapToJson().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getById(
          rPostgresDb,
          stringToInt(pathParams.getField('id')),
        );
        Response<String> rRouteResponse1 = iEncodeMapToJson.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeMapToJson?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

    return false;
  }
}

// **************************************************************************
// Generator: RouteGroupGenerator
// Target: class EventoRouteGroup
// **************************************************************************

abstract class _$JaguarEventoRouteGroup implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[
    const Get(),
    const Get(path: '/:id', pathRegEx: const {'id': r'^[0-9]+$'})
  ];

  Future<List<dynamic>> getAll(Connection db);

  Future<List<dynamic>> getById(Connection db, int id);

  Future<bool> handleRequest(HttpRequest request, {String prefix: ''}) async {
    prefix += '/evento';
    PathParams pathParams = new PathParams();
    bool match = false;

//Handler for getAll
    match =
        routes[0].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeJsonableList iEncodeJsonableList;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeJsonableList = new WrapEncodeJsonableList().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getAll(
          rPostgresDb,
        );
        Response<String> rRouteResponse1 = iEncodeJsonableList.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeJsonableList?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

//Handler for getById
    match =
        routes[1].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeMapToJson iEncodeMapToJson;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeMapToJson = new WrapEncodeMapToJson().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getById(
          rPostgresDb,
          stringToInt(pathParams.getField('id')),
        );
        Response<String> rRouteResponse1 = iEncodeMapToJson.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeMapToJson?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

    return false;
  }
}

// **************************************************************************
// Generator: RouteGroupGenerator
// Target: class FormatoRouteGroup
// **************************************************************************

abstract class _$JaguarFormatoRouteGroup implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[
    const Get(),
    const Get(path: '/:id', pathRegEx: const {'id': r'^[0-9]+$'})
  ];

  Future<List<dynamic>> getAll(Connection db);

  Future<List<dynamic>> getById(Connection db, int id);

  Future<bool> handleRequest(HttpRequest request, {String prefix: ''}) async {
    prefix += '/formato';
    PathParams pathParams = new PathParams();
    bool match = false;

//Handler for getAll
    match =
        routes[0].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeJsonableList iEncodeJsonableList;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeJsonableList = new WrapEncodeJsonableList().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getAll(
          rPostgresDb,
        );
        Response<String> rRouteResponse1 = iEncodeJsonableList.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeJsonableList?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

//Handler for getById
    match =
        routes[1].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeMapToJson iEncodeMapToJson;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeMapToJson = new WrapEncodeMapToJson().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getById(
          rPostgresDb,
          stringToInt(pathParams.getField('id')),
        );
        Response<String> rRouteResponse1 = iEncodeMapToJson.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeMapToJson?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

    return false;
  }
}

// **************************************************************************
// Generator: RouteGroupGenerator
// Target: class PlataformaRouteGroup
// **************************************************************************

abstract class _$JaguarPlataformaRouteGroup implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[
    const Get(),
    const Get(path: '/:id', pathRegEx: const {'id': r'^[0-9]+$'})
  ];

  Future<List<dynamic>> getAll(Connection db);

  Future<List<dynamic>> getById(Connection db, int id);

  Future<bool> handleRequest(HttpRequest request, {String prefix: ''}) async {
    prefix += '/plataforma';
    PathParams pathParams = new PathParams();
    bool match = false;

//Handler for getAll
    match =
        routes[0].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeJsonableList iEncodeJsonableList;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeJsonableList = new WrapEncodeJsonableList().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getAll(
          rPostgresDb,
        );
        Response<String> rRouteResponse1 = iEncodeJsonableList.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeJsonableList?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

//Handler for getById
    match =
        routes[1].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeMapToJson iEncodeMapToJson;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeMapToJson = new WrapEncodeMapToJson().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getById(
          rPostgresDb,
          stringToInt(pathParams.getField('id')),
        );
        Response<String> rRouteResponse1 = iEncodeMapToJson.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeMapToJson?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

    return false;
  }
}

// **************************************************************************
// Generator: RouteGroupGenerator
// Target: class TemaRouteGroup
// **************************************************************************

abstract class _$JaguarTemaRouteGroup implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[
    const Get(),
    const Get(path: '/:id', pathRegEx: const {'id': r'^[0-9]+$'})
  ];

  Future<List<dynamic>> getAll(Connection db);

  Future<List<dynamic>> getById(Connection db, int id);

  Future<bool> handleRequest(HttpRequest request, {String prefix: ''}) async {
    prefix += '/tema';
    PathParams pathParams = new PathParams();
    bool match = false;

//Handler for getAll
    match =
        routes[0].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeJsonableList iEncodeJsonableList;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeJsonableList = new WrapEncodeJsonableList().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getAll(
          rPostgresDb,
        );
        Response<String> rRouteResponse1 = iEncodeJsonableList.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeJsonableList?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

//Handler for getById
    match =
        routes[1].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeMapToJson iEncodeMapToJson;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeMapToJson = new WrapEncodeMapToJson().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getById(
          rPostgresDb,
          stringToInt(pathParams.getField('id')),
        );
        Response<String> rRouteResponse1 = iEncodeMapToJson.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeMapToJson?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

    return false;
  }
}

// **************************************************************************
// Generator: RouteGroupGenerator
// Target: class TipoRouteGroup
// **************************************************************************

abstract class _$JaguarTipoRouteGroup implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[
    const Get(),
    const Get(path: '/:id', pathRegEx: const {'id': r'^[0-9]+$'})
  ];

  Future<List<dynamic>> getAll(Connection db);

  Future<List<dynamic>> getById(Connection db, int id);

  Future<bool> handleRequest(HttpRequest request, {String prefix: ''}) async {
    prefix += '/tipo';
    PathParams pathParams = new PathParams();
    bool match = false;

//Handler for getAll
    match =
        routes[0].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeJsonableList iEncodeJsonableList;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeJsonableList = new WrapEncodeJsonableList().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getAll(
          rPostgresDb,
        );
        Response<String> rRouteResponse1 = iEncodeJsonableList.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeJsonableList?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

//Handler for getById
    match =
        routes[1].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<List> rRouteResponse0 = new Response(null);
      PostgresDb iPostgresDb;
      EncodeMapToJson iEncodeMapToJson;
      try {
        iPostgresDb = new WrapPostgresDb(
          campusConnection,
        )
            .createInterceptor();
        Connection rPostgresDb = await iPostgresDb.pre();
        iEncodeMapToJson = new WrapEncodeMapToJson().createInterceptor();
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = await getById(
          rPostgresDb,
          stringToInt(pathParams.getField('id')),
        );
        Response<String> rRouteResponse1 = iEncodeMapToJson.post(
          rRouteResponse0,
        );
        iPostgresDb.post();
        await rRouteResponse1.writeResponse(request.response);
      } catch (e) {
        await iEncodeMapToJson?.onException();
        await iPostgresDb?.onException();
        rethrow;
      }
      return true;
    }

    return false;
  }
}

// **************************************************************************
// Generator: ApiGenerator
// Target: class CampusApi
// **************************************************************************

abstract class _$JaguarCampusApi implements RequestHandler {
  static const List<RouteBase> routes = const <RouteBase>[
    const Route(path: '/version', methods: const ['GET'])
  ];

  ContenidoRouteGroup get contenidoRoutes;
  EventoRouteGroup get eventoRoutes;
  FormatoRouteGroup get formatoRoutes;
  PlataformaRouteGroup get plataformaRoutes;
  TemaRouteGroup get temaRoutes;
  TipoRouteGroup get tipoRoutes;

  num version();

  Future<bool> handleRequest(HttpRequest request, {String prefix: ''}) async {
    prefix += '/campus';
    PathParams pathParams = new PathParams();
    bool match = false;

//Handler for version
    match =
        routes[0].match(request.uri.path, request.method, prefix, pathParams);
    if (match) {
      Response<num> rRouteResponse0 = new Response(null);
      try {
        rRouteResponse0.statusCode = 200;
        rRouteResponse0.value = version();
        await rRouteResponse0.writeResponse(request.response);
      } catch (e) {
        rethrow;
      }
      return true;
    }

    if (await contenidoRoutes.handleRequest(request, prefix: prefix)) {
      return true;
    }

    if (await eventoRoutes.handleRequest(request, prefix: prefix)) {
      return true;
    }

    if (await formatoRoutes.handleRequest(request, prefix: prefix)) {
      return true;
    }

    if (await plataformaRoutes.handleRequest(request, prefix: prefix)) {
      return true;
    }

    if (await temaRoutes.handleRequest(request, prefix: prefix)) {
      return true;
    }

    if (await tipoRoutes.handleRequest(request, prefix: prefix)) {
      return true;
    }

    return false;
  }
}
