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
  final Location _location;
  int width = window.innerWidth;
  int height = window.innerHeight;

  InfoComponent(this._routeParams, this._location);
  final RouteParams _routeParams;

  @override
  ngOnInit() {
    var _id = _routeParams.get('id');
    id = _id.toString();
  }
}
