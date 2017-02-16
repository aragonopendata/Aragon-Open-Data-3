import 'package:angular2/core.dart';
import 'dart:html';
import 'package:angular2/router.dart';
import 'package:aod3/object/home_card.dart';

@Component(
    selector: 'tarjeta_home',
    templateUrl: 'tarjeta_home.html',
    directives: const <dynamic>[ROUTER_DIRECTIVES])
class TarjetaHomeComponent {
  @Input()
  HomeCard elemento;
  final Router _router;

  bool hover;
  bool firstHover = true;

  TarjetaHomeComponent(this._router);

  void over() {
    hover = true;
    if (firstHover) firstHover = false;
  }

  void out() {
    hover = false;
  }

  void redirect() {
    if (elemento.router) {
      _router.navigateByUrl(elemento.url);
    } else {
      window.location.href = elemento.url;
    }
  }
}
