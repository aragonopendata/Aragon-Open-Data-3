import 'dart:async';
import 'dart:html' show HttpRequest;
import 'dart:convert' show JSON;
import 'package:angular2/core.dart';

@Injectable()
class SearchService {
  Future<List<Map>> getDataset(String input) async {
    String url =
        "http://opendata.aragon.es/catalogo/api/2/util/dataset/autocomplete?incomplete=%${input}%";
    return HttpRequest.request(url).then((HttpRequest result) {
      Map decoded = JSON.decode(result.response);
      if (input != "") {
        return decoded['ResultSet']['Result'];
      } else {
        return null;
      }
    })
      ..catchError((error) {
        print("ERROR: couldnt get a response from the server: $error");
        return null;
      });
  }
}
