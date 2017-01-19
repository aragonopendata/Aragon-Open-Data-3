import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'header/header_component.dart';
import 'footer/footer_component.dart';
import 'package:aod3/component/home/home_component.dart';
import 'package:aod3/component/blueprint/blueprint_component.dart';
import 'package:aod3/component/info/info_component.dart'
    deferred as info_component;

@Component(selector: 'my-app', templateUrl: 'app.html', directives: const [
  HeaderComponent,
  HomeComponent,
  FooterComponent,
  ROUTER_DIRECTIVES
], providers: const [
  ROUTER_PROVIDERS
])
@RouteConfig(const [
  const Route(
      path: '/', name: 'Home', component: HomeComponent, useAsDefault: true),
  const Route(
    path: '/blueprint',
    name: 'Blueprint',
    component: BlueprintComponent,
  ),
  /*const AsyncRoute(
      path: '/info/:id',
      loader: info,
      name: 'Info'),*/
])
class AppComponent {
  String title = 'AOD 3.0';
}
//Future<dynamic> info() => info_component.loadLibrary().then((_)=>info_component.InfoComponent);
