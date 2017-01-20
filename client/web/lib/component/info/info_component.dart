import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2/router.dart';
import 'dart:html' show window;

@Component(
    selector: 'info',
    templateUrl: 'info.html',
    providers: const [ROUTER_PROVIDERS])
class InfoComponent implements OnInit {
  String id;
  final RouteParams _routeParams;
  final Location _location;
  int width = window.innerWidth;
  int height = window.innerHeight;

  InfoComponent(this._routeParams, this._location);

  ngOnInit() {
    var _id = _routeParams.get('id');
    id = _id.toString();
  }
}
