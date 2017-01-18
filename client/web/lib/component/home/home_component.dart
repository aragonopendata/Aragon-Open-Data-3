import 'package:angular2/core.dart';
//import 'package:angular2/router.dart';
import 'json_object/json_object.dart';
import 'dart:html';
import 'dart:convert';
@Component(
    selector: 'home',
    templateUrl: 'home.html',
    )

class HomeComponent{
 	
    void goCkan(Event e) {
      e.preventDefault();
      InputElement bText = querySelector('[name="buscador_home"]');
      //print('bText: ${bText.value}');
      window.location.assign('http://opendata.aragon.es/catalogo/catalogo.html?q=${bText.value}');    
    }  
    Map autocompletar;
    onKey(dynamic event) {
 		//print(event.target.value);
 		var url = "http://opendata.aragon.es/catalogo/api/2/util/dataset/autocomplete?incomplete=%${event.target.value}%";

  		// call the web server asynchronously
  		var request = HttpRequest.getString(url).then(
  			(Result){
  					JsonObject cadena = new JsonObject.fromJsonString(Result);
  					print(cadena);
  					//autocompletar = JSON.decode(Result);	
  					//print(autocompletar);
  					//if(autocompletar is Map){print('Es un Mapa');}

  				}

  			);
 	}
}
