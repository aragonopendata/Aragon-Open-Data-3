import 'dart:async';
import 'dart:html' show HttpRequest;
import 'dart:convert' show JSON;
import 'package:angular2/core.dart';

@Injectable()
class SearchService {
  Future<List<Map<String,String>>> getDataset(String input, {int limit: 8}) async {
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
