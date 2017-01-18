import 'package:angular2/core.dart';
//import 'package:angular2/router.dart';
import 'package:json_object/json_object.dart';
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
    List autocompletar;
    String jsonAuto;
    int lol = 0;
    String valor;

    onKey(dynamic event) {
 		
		//print(event.target.value);
		var url = "http://opendata.aragon.es/catalogo/api/2/util/dataset/autocomplete?incomplete=%${event.target.value}%";
		var request = HttpRequest.getString(url);
		valor = event.target.value;
		request.then(
			(String Result) {
				Map decoded = JSON.decode(Result);
				if(valor != "") {
					autocompletar = decoded['ResultSet']['Result'];
				}
				else{
					//le devolvemos json vacío
					//autocompletar= decoded['ResultSet']['no'];
					autocompletar=null;
				}
				print(autocompletar);
			}
		);
	}

/*
 		//var url = "http://opendata.aragon.es/catalogo/api/2/util/dataset/autocomplete?incomplete=%test%";
  		// call the web server asynchronously
  		var request = HttpRequest.getString(url).then(
  			(Result){
  					jsonAuto = JSON.decode(Result);
  					lol = lol +1;
  					print(lol);
  					//print(cadena);	
  					autocompletar = jsonAuto['ResultSet']['Result'];
  					print(autocompletar);
  				}
  			);

 		}*/


}

