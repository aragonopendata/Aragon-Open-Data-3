import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'package:angular2/core.dart';

@Injectable()
class CampusService {
  static const String urlBase = "http://localhost:8756/campus";
  static const String urlContenido = "/contenido";
  static const String urlTipo = "/tipo";


  Future<List<Map>> getAllCampus({int offset: 0,
  int limit: 9,
  int formato,
  int evento,
  int plataforma,
  String aparece,
  int tema}) async {
    String conditions = "?limit=$limit&offset=$offset";
    if(formato!=null) conditions += "&$formato";
    if(evento!=null) conditions += "&$evento";
    if(plataforma!=null) conditions += "&$plataforma";
    if(aparece!=null) conditions += "&$aparece";
    if(tema!=null) conditions += "&$tema";

    return HttpRequest.request(urlBase + urlContenido + conditions).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }

  Future<List<Map>> getTipos(){
    return HttpRequest.request(urlBase + urlTipo).then((HttpRequest result) {
      return JSON.decode(result.response);
    })
      ..catchError((error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }
}