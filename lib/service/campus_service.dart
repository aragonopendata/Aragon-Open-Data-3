import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'package:angular2/core.dart';
import 'package:fluri/fluri.dart';

@Injectable()
class CampusService {
  ///[Uri] de la api que contine campus
  Uri urlBase = new Uri(scheme: 'http',pathSegments: <String>['jaguar','campus']);
  //Uri urlBase = new Uri(scheme: 'http', host:'localhost', port: 8756, pathSegments: <String>['campus']);

  ///Segmente de la ruta que corresponde a ```/contenido```
  static const String urlContenido = "contenido";

  ///Segmente de la ruta que corresponde a ```/tipo```
  static const String urlTipo = "tipo";

  ///Segmente de la ruta que corresponde a ```/evento```
  static const String urlEvento = "evento";

  ///Segmente de la ruta que corresponde a ```/tema```
  static const String urlEtiqueta = "tema";

  ///Segmente de la ruta que corresponde a ```/formato```
  static const String urlFormato = "formato";

  ///Segmente de la ruta que corresponde a ```/ponente```
  static const String urlPonente = "ponente";

  ///Contiene los datos de campus paginados
  List<List<Map<String,dynamic>>> campusPaginated;

  ///Limite de datos a mostrar por pantalla
  static const num limit = 9;

  ///Numero de elememtos totales que contiene el filtor actual
  num totalElements;

  ///Numero de posibles paginas por delante de la pagina actual
  num posiblePages;

  ///Pagina actual que se esta visualizando
  num currentPage = 1;

  ///Elemento seleccionado para mostar en ```campus/:id```
  Map<String,dynamic> campusItem = new Map<String,dynamic>();

  ///Filtro de ponente, su valor predefinido es ```null```
  String _ponenteValue;

  ///Filtro de tipo, su valor predefinido es ```-1```
  num _tipoValue = -1;

  ///Filtro de etiqueta, su valor predefinido es ```-1```
  num _etiquetaValue = -1;

  ///Filtro de evento, su valor predefinido es ```-1```
  num _eventoValue = -1;

  ///Filtro de formato, su valor predefinido es ```-1```
  num _formatoValue =-1;

  ///Contiene las paginas y como deben ser mostradas
  List<num> pagesList;


  ///Devuelve la primera pagina con el filtro actual desde la api y prepara las variables necesarias para la paginacion
  Future<List<Map<String,dynamic>>> getAllCampus({
    num offset: 0,
    num limit: 9,
  }) async {
    Fluri url = new Fluri.fromUri(urlBase);

    url.addPathSegment("contenido");
    url.setQueryParam("limit", limit.toString());
    url.setQueryParam("offset", offset.toString());

    if (_formatoValue != -1)
      url.setQueryParam("formato", _formatoValue.toString());
    if (_tipoValue != -1) url.setQueryParam("tipo", _tipoValue.toString());
    if (_eventoValue != -1)
      url.setQueryParam("evento", _eventoValue.toString());
    if (_ponenteValue != null) url.setQueryParam("aparece", _ponenteValue);
    if (_etiquetaValue != -1)
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

  ///Devuelve una pagina espedifica con el filtro actual desde la api
  Future<List<Map<String,dynamic>>> getCampusPage({
    num offset: 0,
    num limit: 9,
  }) async {
    Fluri url = new Fluri.fromUri(urlBase);

    url.addPathSegment("contenido");
    url.setQueryParam("limit", limit.toString());
    url.setQueryParam("offset", offset.toString());

    if (_formatoValue != -1)
      url.setQueryParam("formato", _formatoValue.toString());
    if (_tipoValue != -1) url.setQueryParam("tipo", _tipoValue.toString());
    if (_eventoValue != -1)
      url.setQueryParam("evento", _eventoValue.toString());
    if (_ponenteValue != null) url.setQueryParam("aparece", _ponenteValue);
    if (_etiquetaValue != -1)
      url.setQueryParam("tema", _etiquetaValue.toString());

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((Event error) {
        print("ERROR: couldnt get a response from the server: ${error.type}");
        return null;
      });
  }

  ///Devuelve el numero posible de paginas con el filtro ctual
  Future<Null> getPosiblePages(Fluri url) async {
    url.addPathSegment('count');
    await HttpRequest.request(url.toString()).then((HttpRequest result) {
      totalElements = JSON.decode(result.response)[0]["count"];
      posiblePages = (totalElements / limit).ceil();
    });
  }

  ///Crea el listado de paginas disponibles arreglandolas para que sea mas amigable con el usuario
  List<num> createPagesList() {
    List<num> lista = new List<num>(posiblePages);

    for (num i = 0; i < lista.length; i++) {
      lista[i] = i + 1;
    }
    return lista;
  }

  ///Obtiene todos los tipos existentes
  Future<List<Map<String,dynamic>>> getTipos() async {
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment(urlTipo);

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((dynamic error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }

  ///Obtiene todos los eventos existentes
  Future<List<Map<String,dynamic>>> getEventos() async {
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment(urlEvento);

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((dynamic error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }

  ///Obtiene todas las etiquetas existentes
  Future<List<Map<String,dynamic>>> getEtiquetas() async {
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment(urlEtiqueta);

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((dynamic error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }

  ///Obtiene todos los formatos existentes
  Future<List<Map<String,dynamic>>> getFormatos() async {
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment(urlFormato);

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((dynamic error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }

  ///Obtiene todos los ponentes existentes
  Future<List<Map<String,dynamic>>> getPonentes() async {
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment(urlPonente);

    return HttpRequest.request(url.toString()).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((dynamic error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }

  ///Carga inicial de campus
  Future<List<Map<String,dynamic>>> initializeCampus({
    num offset: 0,
    num limit: 9,
  }) async{
    return getAllCampus(
      offset: (currentPage-1)*9,
    ).then((List<Map<String,dynamic>> result) {
      if(totalElements == 0){
        campusPaginated.clear();
        return campusPaginated[0];
      }else{
      campusPaginated = new List<List<Map<String,dynamic>>>(posiblePages.toInt());
      campusPaginated[0] = result;
      pagesList = createPagesList();
      prepareNextPages(
        currentPage,
      );
      return campusPaginated[0];}
    });
  }

  ///Carga las siguientes paginas disponibles (hasta un maximo de 2 ) de la pagina siendo visualizada
  Future<Null> prepareNextPages(num actual, {num offset: 0}) async {
    num morePages = posiblePages - actual;
    if (morePages >= 2) {
      if (campusPaginated[actual] == null) {
        getCampusPage(
          offset: actual * limit,
        ).then((List<Map<String,dynamic>> lista) {
          campusPaginated[actual] = lista;
        });
      }
      if (campusPaginated[actual + 1] == null) {
        getCampusPage(
          offset: (actual + 1) * limit,
        ).then((List<Map<String,dynamic>> lista) {
          campusPaginated[actual + 1] = lista;
        });
      }
    } else if (morePages == 1) {
      if (campusPaginated[actual] == null) {
        getCampusPage(
          offset: (actual + 1) * limit,
        ).then((List<Map<String,dynamic>> lista) {
          campusPaginated[actual] = lista;
        });
      }
    }
  }

  ///Cambia la pagina actual e inicia la carga de las proximas paginas
  Future<List<Map<String,dynamic>>> changePage(num page) async {
    if (campusPaginated[page] == null) {
      return getCampusPage(
        offset: (page) * limit,
      ).then((List<Map<String,dynamic>> lista) {
        campusPaginated[page - 1] = lista;
        prepareNextPages(page);
        currentPage = page;
        return lista;
      });
    } else {
      prepareNextPages(page);
      currentPage = page;
      return campusPaginated[page - 1];
    }
  }

  String get ponenteValue => _ponenteValue;

  ///Actualiza el filtro de ponente y se vuelve a la pagina inicial
  set ponenteValue(String value) {
    _ponenteValue = value;
    currentPage = 1;
  }

  num get etiquetaValue => _etiquetaValue;

  ///Actualiza el filtro de ponente y se vuelve a la pagina inicial
  set etiquetaValue(num value) {
    _etiquetaValue = value;
    currentPage = 1;
  }

  num get eventoValue => _eventoValue;

  ///Actualiza el filtro de ponente y se vuelve a la pagina inicial
  set eventoValue(num value) {
    _eventoValue = value;
    currentPage = 1;
  }

  num get formatoValue => _formatoValue;

  ///Actualiza el filtro de ponente y se vuelve a la pagina inicial
  set formatoValue(num value) {
    _formatoValue = value;
    currentPage = 1;
  }

  num get tipoValue => _tipoValue;

  ///Actualiza el filtro de ponente y se vuelve a la pagina inicial
  set tipoValue(num value) {
    _tipoValue = value;
    currentPage = 1;
  }

  ///Devuelve un elemento espedifico desde la api para poder usarse en ```/campus/:id```
  Future<Null> getItem(String id) async{
    Fluri url = new Fluri.fromUri(urlBase);
    url.addPathSegment('contenido');
    url.addPathSegment(id);

    HttpRequest.request(url.toString()).then((HttpRequest result) {
      campusItem = JSON.decode(result.response);
    });
  }

  ///Devuelve todos los filtros a su estado inicial
  void clearSearch() {
    _tipoValue = -1;
    _etiquetaValue = -1;
    _eventoValue = -1;
    _formatoValue = -1;
    _ponenteValue = null;
  }
}
