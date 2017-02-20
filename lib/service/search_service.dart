import 'dart:async';
import 'dart:html' show HttpRequest;
import 'dart:convert' show JSON;
import 'package:angular2/core.dart';

///Servicio que se encarga de realizar todas las llamadas a la api de CKAN de ```aragon.opendata.es```
@Injectable()
class SearchService {
  ///Devuelve los ultimos datasets creados que contienen unas determinadas letras
  Future<List<Map<String,String>>> getDataset(String input, {num limit: 8}) async {
    String url =
        "http://opendata.aragon.es/catalogo/api/2/util/dataset/autocomplete?incomplete=%$input%&limit=$limit";
    return HttpRequest.request(url).then((HttpRequest result) {
      //Map decoded = JSON.decode(result.response);
      if (input != "") {
        return JSON.decode(result.response)['ResultSet']['Result'];
      } else {
        return null;
      }
    })
      ..catchError((dynamic error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }
}
