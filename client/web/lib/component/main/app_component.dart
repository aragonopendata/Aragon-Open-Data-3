import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'header/header_component.dart';
import 'footer/footer_component.dart';
import 'package:aod3/component/home/home_component.dart';
import 'package:aod3/component/blueprint/blueprint_component.dart';
import 'package:aod3/component/info/campus/campus_component.dart';
import 'package:aod3/component/info/info_component.dart' deferred as info_component;
import 'package:aod3/component/info/aplicaciones/aplicaciones_component.dart' deferred as aplicaciones_component;
import 'package:aod3/component/info/informacion/informacion_component.dart' deferred as informacion_component;
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
  const Route(
    path: '/campus',
    name: 'Campus',
    component: CampusComponent,
  ),
    const AsyncRoute(
      path: '/info/colabora',
      loader: info,
      name: 'Colabora'),
  const AsyncRoute(
      path: '/info/:id',
      loader: informacion,
      name: 'Info'),
  const AsyncRoute(
      path: '/herramientas/:id',
      loader: herramientas,
      name: 'Herramientas'),
  const AsyncRoute(
      path: '/info/aplicaciones',
      loader: aplicaciones,
      name: 'Aplicaciones'),
  const AsyncRoute(
      path: '/herramientas/campus',
      loader: campus,
      name: 'Campus')
])
class AppComponent {
  String title = 'AOD 3.0';
}
Future<dynamic> info() => info_component.loadLibrary().then((_)=>info_component.InfoComponent);
Future<dynamic> aplicaciones() => aplicaciones_component.loadLibrary().then((_)=>aplicaciones_component.AplicacionesComponent);
Future<dynamic> informacion() => informacion_component.loadLibrary().then((_)=>informacion_component.InformacionComponent);
Future<dynamic> herramientas() => informacion_component.loadLibrary().then((_)=>informacion_component.InformacionComponent);
Future<dynamic> campus() => campus_component.loadLibrary().then((_)=>campus_component.CampusComponent);
