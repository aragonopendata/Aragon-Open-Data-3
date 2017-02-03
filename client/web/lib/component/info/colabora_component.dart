import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2/router.dart';
import 'dart:html' show window;

@Component(
    selector: 'colabora',
    templateUrl: 'colabora.html',
    providers: const [ROUTER_PROVIDERS])
class ColaboraComponent implements OnInit {
  String id;
  int width = window.innerWidth;
  int height = window.innerHeight;

  ColaboraComponent(this._routeParams);
  final RouteParams _routeParams;

  @override
  ngOnInit() {
    var _id = _routeParams.get('id');
    id = _id.toString();
  }
}
