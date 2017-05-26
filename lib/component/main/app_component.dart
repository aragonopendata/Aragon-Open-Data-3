import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'header/header_component.dart';
import 'footer/footer_component.dart';
import 'package:angular2/security.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:aod3/component/home/home_component.dart';
import 'package:aod3/component/blueprint/blueprint_component.dart';
import 'package:aod3/component/info/campus/campus_component.dart';
import 'package:aod3/component/info/campus/campus_item_component.dart';
import 'package:aod3/component/info/colabora_component.dart'
    deferred as colabora_component;
    import 'package:aod3/component/info/terminos_component.dart'
    deferred as terminos_component;
import 'package:aod3/component/info/aplicaciones/aplicaciones_component.dart'
    deferred as aplicaciones_component;
import 'package:aod3/component/info/informacion/informacion_component.dart'
    deferred as informacion_component;
import 'package:aod3/component/info/envio_aplicaciones/envio_aplicaciones_component.dart';
import 'package:aod3/service/campus_service.dart';
import 'package:aod3/service/search_service.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app.html',
    directives: const <dynamic>[
      HeaderComponent,
      HomeComponent,
      FooterComponent,
      ROUTER_DIRECTIVES
    ],
    providers: const <dynamic>[
      ROUTER_PROVIDERS,
      SearchService,
      CampusService,
      DomSanitizationService,
      materialProviders
    ])
@RouteConfig(const <dynamic>[
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
  const Route(
    path: '/campus/:id',
    name: 'CampusItem',
    component: CampusItemComponent,
  ),
  const Route(
    path: 'info/envio-aplicaciones',
    name: 'EnvioAplicaciones',
    component: EnvioAplicacionesComponent,
  ),
  const AsyncRoute(path: '/info/colabora', loader: colabora, name: 'Colabora'),
  const AsyncRoute(path: '/terminos-de-uso', loader: terminos, name: 'Terminos'),
  const AsyncRoute(path: '/info/:id', loader: informacion, name: 'Info'),
  const AsyncRoute(
      path: '/herramientas/:id', loader: informacion, name: 'Herramientas'),
  const AsyncRoute(
      path: '/info/aplicaciones', loader: aplicaciones, name: 'Aplicaciones'),
])
class AppComponent {}

///Loader asrincrono para el componente [ColaboraComponent]
Future<dynamic> colabora() => colabora_component
    .loadLibrary()
    .then((_) => colabora_component.ColaboraComponent);

///Loader asrincrono para el componente [AplicacionesComponent]
Future<dynamic> aplicaciones() => aplicaciones_component
    .loadLibrary()
    .then((_) => aplicaciones_component.AplicacionesComponent);

///Loader asrincrono para el componente [InformacionComponent]
Future<dynamic> informacion() => informacion_component
    .loadLibrary()
    .then((_) => informacion_component.InformacionComponent);

///Loader asrincrono para el componente [TerminosComponent]
Future<dynamic> terminos() => terminos_component
    .loadLibrary()
    .then((_) => terminos_component.TerminosComponent);
