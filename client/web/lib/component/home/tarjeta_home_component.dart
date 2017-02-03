import 'dart:async';
import 'package:angular2/core.dart';
//import 'package:angular2/router.dart';
//import 'package:json_object/json_object.dart';
import 'dart:html';
import 'dart:convert';
import 'package:angular2/router.dart';
import 'package:aod3/object/home_card.dart';

@Component(
    selector: 'tarjeta_home',
    templateUrl: 'tarjeta_home.html',
    directives: const [ROUTER_DIRECTIVES],
    providers: const [])
class TarjetaHomeComponent{
  @Input()
  HomeCard elemento;
  final Router _router;

  bool hover;
  bool firstHover = true;

  TarjetaHomeComponent(this._router);

  over(){
    hover = true;
    if(firstHover) firstHover=false;
  }

  out(){
    hover= false;
  }

  redirect(){
    if(elemento.router){
      _router.navigateByUrl(elemento.url);
    }else{
      window.location.href = elemento.url;
    }

  }

}