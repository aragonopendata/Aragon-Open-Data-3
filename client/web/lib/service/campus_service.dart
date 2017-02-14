import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'package:angular2/core.dart';
import 'package:fluri/fluri.dart';

@Injectable()
class CampusService {
  //Uri urlBase = new Uri(scheme: 'http', pathSegments: ['jaguar','campus']);
  Uri urlBase = new Uri(scheme: 'http', host:'localhost', port: 8756, pathSegments: ['campus']);
  static const String urlContenido = "contenido";
  static const String urlTipo = "tipo";
  static const String urlEvento = "evento";
  static const String urlEtiqueta = "tema";
  static const String urlFormato = "formato";
  static const String urlPonente = "ponente";
  List campusPaginated;
  static const int limit = 9;
  int totalElements;
  int posiblePages;
  int _tipoValue;
  int currentPage = 1;
  Map<String,dynamic> campusItem = new Map();

  int get tipoValue => _tipoValue;

  set tipoValue(int value) {
    _tipoValue = value;
    currentPage = 1;
  }

  String _ponenteValue;
  int _etiquetaValue;
  int _eventoValue;
  int _formatoValue;
  List<int> pagesList;

  Future<List<Map>> getAllCampus({
    int offset: 0,
    int limit: 9,
  }) async {
    Fluri url = new Fluri.fromUri(urlBase);

    url.addPathSegment("contenido");
    url.setQueryParam("limit", limit.toString());
    url.setQueryParam("offset", offset.toString());

    if (_formatoValue != null)
      url.setQueryParam("formato", _formatoValue.toString());
    if (_tipoValue != null) url.setQueryParam("tipo", _tipoValue.toString());
    if (_eventoValue != null)
      url.setQueryParam("evento", _eventoValue.toString());
    if (_ponenteValue != null) url.setQueryParam("aparece", _ponenteValue);
    if (_etiquetaValue != null)
      url.setQueryParam("tema", _etiquetaValue.toString());

    getPosiblePages(url);

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((Event error) {
        print("ERROR: couldnt get a response from the server: ${error.type}");
        return null;
      });
  }

  Future<List<Map>> getCampusPage({
    int offset: 0,
    int limit: 9,
  }) async {
    Fluri url = new Fluri.fromUri(urlBase);

    url.addPathSegment("contenido");
    url.setQueryParam("limit", limit.toString());
    url.setQueryParam("offset", offset.toString());

    if (_formatoValue != null)
      url.setQueryParam("formato", _formatoValue.toString());
    if (_tipoValue != null) url.setQueryParam("tipo", _tipoValue.toString());
    if (_eventoValue != null)
      url.setQueryParam("evento", _eventoValue.toString());
    if (_ponenteValue != null) url.setQueryParam("aparece", _ponenteValue);
    if (_etiquetaValue != null)
      url.setQueryParam("tema", _etiquetaValue.toString());

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((Event error) {
        print("ERROR: couldnt get a response from the server: ${error.type}");
        return null;
      });
  }

  getPosiblePages(Fluri url) async {
    url.addPathSegment('count');
    await HttpRequest.request(url.toString()).then((HttpRequest result) {
      totalElements = JSON.decode(result.response)[0]["count"];
      posiblePages = (totalElements / limit).ceil();
    });
  }

  List<int> createPagesList() {
    List<int> lista = new List(posiblePages);

    for (int i = 0; i < lista.length; i++) {
      lista[i] = i + 1;
    }
    return lista;
  }

  Future<List<Map<String,dynamic>>> getTipos() async {
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment(urlTipo);

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }

  Future<List<Map<String,dynamic>>> getEventos() async {
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment(urlEvento);

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }

  Future<List<Map<String,dynamic>>> getEtiquetas() async {
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment(urlEtiqueta);

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }

  Future<List<Map<String,dynamic>>> getFormatos() async {
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment(urlFormato);

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }

  Future<List<Map<String,dynamic>>> getPonentes() async {
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment(urlPonente);

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }

  initializeCampus({
    int offset: 0,
    int limit: 9,
  }) {
    return getAllCampus(
      offset: (currentPage-1)*9,
    ).then((result) {
      if(totalElements == 0){
        campusPaginated.clear();
        return campusPaginated;
      }else{
      campusPaginated = new List(posiblePages);
      campusPaginated[0] = result;
      pagesList = createPagesList();
      prepareNextPages(
        currentPage-1,
        //offset: offset,
      );
      return campusPaginated[0];}
    });
  }

  Future<Null> prepareNextPages(int actual, {int offset: 0}) async {
    int morePages = posiblePages - actual;
    if (morePages >= 2) {
      if (campusPaginated[actual + 1] == null) {
        getCampusPage(
          offset: (actual + 1) * limit,
        ).then((lista) {
          campusPaginated[actual + 1] = lista;
        });
      }
      if (campusPaginated[actual + 2] == null) {
        getCampusPage(
          offset: (actual + 2) * limit,
        ).then((lista) {
          campusPaginated[actual + 2] = lista;
        });
      }
    } else if (morePages == 1) {
      if (campusPaginated[actual + 1] == null) {
        getCampusPage(
          offset: (actual + 1) * limit,
        ).then((lista) {
          campusPaginated[actual + 1] = lista;
        });
      }
    }
  }

  Future changePage(int page) async {
    if (campusPaginated[page] == null) {
      return getCampusPage(
        offset: (page) * limit,
      ).then((lista) {
        campusPaginated[page - 1] = lista;
        prepareNextPages(page - 1);
        currentPage = page;
        return lista;
      });
    } else {
      prepareNextPages(page - 1);
      currentPage = page;
      return campusPaginated[page - 1];
    }
  }

  String get ponenteValue => _ponenteValue;

  set ponenteValue(String value) {
    _ponenteValue = value;
    currentPage = 1;
  }

  int get etiquetaValue => _etiquetaValue;

  set etiquetaValue(int value) {
    _etiquetaValue = value;
    currentPage = 1;
  }

  int get eventoValue => _eventoValue;

  set eventoValue(int value) {
    _eventoValue = value;
    currentPage = 1;
  }

  int get formatoValue => _formatoValue;

  set formatoValue(int value) {
    _formatoValue = value;
    currentPage = 1;
  }

  Future getItem(String id) async{
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment('contenido');
    url.addPathSegment(id);

    HttpRequest.request(url.toString()).then((HttpRequest result) {
      campusItem = JSON.decode(result.response);
    });
  }

  void clearSearch() {
    _tipoValue = null;
    _etiquetaValue = null;
    _eventoValue = null;
    _formatoValue = null;
    _ponenteValue = null;
  }
}
