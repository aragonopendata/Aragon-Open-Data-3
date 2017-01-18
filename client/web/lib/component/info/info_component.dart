import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2/router.dart';

@Component(
    selector: 'info',
    templateUrl: 'info.html',
    providers: const [ROUTER_PROVIDERS]
    )

class InfoComponent implements OnInit{
  String id;
  final RouteParams _routeParams;
  final Location _location;

  InfoComponent(this._routeParams, this._location);

  ngOnInit(){
    var _id = _routeParams.get('id');
    id = _id.toString();
  }
}