import 'package:angular2/core.dart';
import 'package:aod3/object/aplicacion.dart';

@Injectable()
class InfoService {
  List<Aplicacion> get aplicaciones => [
        new Aplicacion(
            'AragoPedia',
            'Los datos abiertos de Aragón Open Data trabajados para que puedas verlos por territorios. Aquí tienes los datos de tu municipio y de tu comarca para que puedas consultarlos y saber las principales informaciones de la población en la que vives o en la que has nacido.',
            'http://opendata.aragon.es/aragopedia',
            'http://opendata.aragon.es/public/i/aplicaciones/logoAppAragopedia.png'),
        new Aplicacion(
            'Visualización de presupuestos',
            '¿Cómo y en qué gastan las Administraciones de Aragón? Con esta aplicación te mostramos de un modo claro y visual cómo se distribuyen los presupuestos autonómicos y locales. De dónde vienen los ingresos y a qué se destina el gasto para que puedas comprobar en qué se gasta el dinero de tus impuestos.',
            'http://presupuesto.aragon.es/',
            'http://opendata.aragon.es/public/i/aplicaciones/logoAppPresupuestos.png'),
        new Aplicacion(
            'Open Social Data',
            'Si quieres saber lo que se cuenta de Aragón, mediante esta aplicación podrás acceder a toda su conversación. Te ofrecemos la información existente en las redes sociales sobre Aragón de forma ordenada para que puedas conocer de primera mano los temas que te importan.',
            'http://opendata.aragon.es/portal/social-data',
            'http://opendata.aragon.es/public/i/aplicaciones/logoAppOpenSocialData.png'
        ),new Aplicacion(
            'BOA Boletín Oficial de Aragón',
            'El Boletín Oficial de Aragón (BOA) es el diario oficial de la Comunidad Autónoma de Aragón, a través del cual se hacen públicos los documentos que, en virtud de los principios constitucionales de publicidad de las normas y de seguridad jurídica, deben ser objeto de publicidad oficial. Ahora puedes consultarlo en abierto.',
            'http://www.boa.aragon.es/EBOA/opendata.htm',
            'http://opendata.aragon.es/public/i/aplicaciones/logoAppBOA.png'
        ),new Aplicacion(
            'Mapa de los Bienes Culturales de Aragón',
            'El mapa con los Bienes Culturales de Aragón forma parte del proyecto Aragón en la mano, que está siendo desarrollado, en el área de Ciencias Sociales, por los alumnos de tercer curso de Educación Secundaria Obligatoria del colegio Santa María del Pilar de Zaragoza.',
            'http://www.arcgis.com/apps/StorytellingTextLegend/index.html?appid=3f1d252c1db64140817ab84f0a03524c',
            'http://opendata.aragon.es/public/i/aplicaciones/BICAragon-Naranja.png'
        ),new Aplicacion(
            '¿Dónde van mis impuestos?',
            'Una herramienta que permite visualizar cuánto dinero gastan la Administración General del Estado y la Seguridad Social, y cómo lo gastan. Descubre fácilmente de dónde vienen los ingresos y localiza rápidamente cualquier partida de gasto con el buscador. Sí, la pregunta del millón tiene respuesta.',
            'http://dondevanmisimpuestos.es/',
            'http://opendata.aragon.es/public/i/aplicaciones/dvmi.png'
        ),new Aplicacion(
            'ENCUENTRALO ZgZ',
            'La Aplicación móvil gratuita de la ciudad de Zaragoza, donde los usuarios podrán encontrar cualquier tipo de servicio, información, comercio o lugar de interés, en tan solo unos segundos, y donde los comercios pueden publicitarse en más de 500.000 smartphones. Disponible en Google Play y App Store',
            'https://play.google.com/store/apps/details?id=com.adianteventures.adianteapps.encuentralozgz&hl=es',
            'http://opendata.aragon.es/public/i/aplicaciones/ENCUENTRALOZgZtxiki.png'
        ),new Aplicacion(
            'eBolets Las setas de Aragón en tu móvil!',
            'App de predicción micológica diaria fiable para las especies más apreciadas de la comunidad de Aragón. App con precisión en la geolocalización de las setas hasta 250 m x 250 m con la ayuda de mapas topográficos y realidad aumentada.',
            'http://www.ebolets.com/es/index.html',
            'http://opendata.aragon.es/public/i/aplicaciones/eBolets100x100.png'
        ),new Aplicacion(
            'Buscador-visualizador territorial de información',
            'Equipo DEVTA: Tania Escudero Fernández y Alejandro Fernández Carrera. Recorre los recursos espaciales de Aragón Open Data a través de un buscador territorial que unifica la información de los municipios de Aragón',
            'http://vps147.cesvima.upm.es/jacathon_2014/index.html',
            'http://opendata.aragon.es/public/i/jacathon/Picto02_Buscador_Territorial_Jacathon.jpg'
        ),new Aplicacion(
            'Población escolar en Aragón',
            'Equipo DN Lab: Alberto Labarga Gutiérrez, Leila Chivite Matthews, Damaris Albert Trinidad y Antonio García Domínguez. Proyecto de periodismo de datos para el Diario de Navarra. Con los datos de Aragón Open Data se recorren los cambios en el sistema educativo de Aragón de los últimos años.',
            'http://laboratorio.diariodenavarra.es/jacathon/',
            'http://opendata.aragon.es/public/i/jacathon/Picto03_Poblacion_Escolar_Jacathon.jpg'
        ),new Aplicacion(
            'Aragón Open Trails',
            'Equipo Huracán: Carlos Matallín Civera, Gonzalo Izquierdo Gracia, Luís Bosque y Sergio Rubio Gracia. Descubre los senderos de Aragón con esta aplicación. Encuentra además los senderos más cercanos a tu ubicación y recomendaciones cercanas a los senderos.',
            'http://aot.rbel.co/',
            'http://opendata.aragon.es/public/i/jacathon/Picto04_AragonOpenTrails_Jacathon.jpg'
        ),new Aplicacion(
            'CRAs Aragón',
            'Equipo JodoCoders: Javier Rubio Rubio, Dani Latorre Velilla, Jesús Barón Rodríguez y Rafael Ramos Guallar. Los Colegios Rurales Agrupados son los centros donde se educan muchos niños de Aragón, descubre los movimientos que estos niños tienes que hacer para acudir a clase.',
            'http://crasaragon.com/',
            'http://opendata.aragon.es/public/i/jacathon/Picto05_CRAs_Aragon_Jacathon.jpg'
        ),new Aplicacion(
            '¿Conoces Aragón?',
            'Equipo NO-TEAM: Ismael Reyes Bugarín, Patricia Perochena Echave y Luís Cruz Pérez. ¿Realmente crees que conoces Aragón? Con este juego para Android podrás saber si eres el que mejor conoce la Región de Aragón.',
            'https://play.google.com/store/apps/details?id=noteam.conocesaragon',
            'http://opendata.aragon.es/public/i/jacathon/Picto08_ConocesAragon_Jacathon.jpg'
        ),new Aplicacion(
            'Visual AragoPedia',
            'Equipo PoolParty: Rafa García Ortega, Beatriz Martínez Martínez y Fernando Blat Peris. Descubre de forma visual e interactiva los datos que están dentro de AragoPedia',
            'http://visual-aragopedia.visualizados.com/',
            'http://opendata.aragon.es/public/i/jacathon/Picto10_Aragopedia_Jacathon.jpg'
        ),new Aplicacion(
            'Papelea',
            'Papelea es una web que facilita ayuda a los ciudadanos en sus trámites con las diferentes administraciones públicas, tanto a escala nacional, como autonómica y municipal. Así, se puede encontrar toda la documentación y datos necesarios para la realización de trámites del sector público en un único punto.',
            'http://www.papelea.com/',
            'http://opendata.aragon.es/public/i/aplicaciones/papelea.png'
        )
      ];
}