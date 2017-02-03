import 'package:angular2/core.dart';
import 'package:aod3/object/home_element.dart';
import 'package:aod3/object/home_card.dart';

@Injectable()
class HomeService {
  List<HomeElement> getList() {
    return [
      new HomeElement(
          'Datos',
          'En Aragón Open Data odrecemos servicios con los datos que tenmos, asi facilitamos que todo el mubndo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
          [
            new HomeCard(
                'Banner-01-BancoDatos',
                'Banco de datos',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                'http://opendata.aragon.es/catalogo/catalogo.html',
                false),
            new HomeCard(
                'Banner-02-Temas',
                'Temas',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                'http://opendata.aragon.es/catalogo/catalogo.html',
                false),
            new HomeCard(
                'Banner-03-Publicadores',
                'Publicadores',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                'http://opendata.aragon.es/catalogo/organizacion',
                false),
          ]),
      new HomeElement(
          'Servicios',
          'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
          [
            new HomeCard(
                'Banner-04-OpenSocialData',
                'Open Social Data',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                'http://opendata.aragon.es/portal/social-data',
                false),
            new HomeCard(
                'Banner-05-Aragopedia',
                'Aragopedia',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                'http://opendata.aragon.es/apps/aragopedia',
                false),
            new HomeCard(
                'Banner-06-Presupuestos',
                'Presupuestos',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                'http://presupuesto.aragon.es/',
                false),
            new HomeCard(
                'Banner-07-CRAs',
                'CRAS',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                'http://opendata.aragon.es/apps/cras',
                false),
          ]),
      new HomeElement(
          'Información',
          'En Aragón Open Data odrecemos servicios con los datos que tenmos, asi facilitamos que todo el mubndo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
          [
            new HomeCard(
                'Banner-08-Colabora',
                'Colabora',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                '/info/colabora',
                true),
            new HomeCard(
                'Banner-09-Aplicaciones',
                'Aplicaciones',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                '/info/aplicaciones',
                true),
            new HomeCard(
                'Banner-10-Informacion',
                'Información',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                '/info/informacion',
                true),
            new HomeCard(
                'Banner-11-Eventos',
                'Eventos',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                '/info/eventos',
                true),
          ]),
      new HomeElement(
          'Herramientas',
          'En Aragón Open Data odrecemos servicios con los datos que tenmos, asi facilitamos que todo el mubndo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
          [
            new HomeCard(
                'Banner-12-Campus',
                'AOD Campus',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                '/campus',
                true),
            new HomeCard(
                'Banner-13-Desarrolladores',
                'Desarrolladores',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                '/info/desarrolladores',
                true),
            new HomeCard(
                'Banner-14-APIs',
                'Apis',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                '/info/apis',
                true),
            new HomeCard(
                'Banner-15-SPARQL',
                'Sparql',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                '/info/sparql',
                true),
            new HomeCard(
                'Banner-16-GITHUB',
                'Github',
                'En Aragón Open Data ofrecemos servicios con los datos que tenemos, asi facilitamos que todo el mundo pueda ver los datos, reutilizarlos y acceder a la informacion de forma sencilla',
                'https://github.com/aragonopendata',
                false),
          ]),

    ];
  }
}
