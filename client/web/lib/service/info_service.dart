import 'package:angular2/core.dart';
import 'package:aod3/object/aplicacion.dart';
import 'package:aod3/object/webContent.dart';
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
            'Equipo <a href="https://github.com/aragonopendata/DEVTA">DEVTA</a>: Tania Escudero Fernández y Alejandro Fernández Carrera. Recorre los recursos espaciales de Aragón Open Data a través de un buscador territorial que unifica la información de los municipios de Aragón',
            'http://vps147.cesvima.upm.es/jacathon_2014/index.html',
            'http://opendata.aragon.es/public/i/jacathon/Picto02_Buscador_Territorial_Jacathon.jpg'
        ),new Aplicacion(
            'Población escolar en Aragón',
            'Equipo <a href="https://github.com/aragonopendata/DNlab">DN Lab</a>: Alberto Labarga Gutiérrez, Leila Chivite Matthews, Damaris Albert Trinidad y Antonio García Domínguez. Proyecto de periodismo de datos para el Diario de Navarra. Con los datos de Aragón Open Data se recorren los cambios en el sistema educativo de Aragón de los últimos años.',
            'http://laboratorio.diariodenavarra.es/jacathon/',
            'http://opendata.aragon.es/public/i/jacathon/Picto03_Poblacion_Escolar_Jacathon.jpg'
        ),new Aplicacion(
            'Aragón Open Trails',
            'Equipo <a href="https://github.com/aragonopendata/Huracan">Huracán</a>: Carlos Matallín Civera, Gonzalo Izquierdo Gracia, Luís Bosque y Sergio Rubio Gracia. Descubre los senderos de Aragón con esta aplicación. Encuentra además los senderos más cercanos a tu ubicación y recomendaciones cercanas a los senderos.',
            'http://aot.rbel.co/',
            'http://opendata.aragon.es/public/i/jacathon/Picto04_AragonOpenTrails_Jacathon.jpg'
        ),new Aplicacion(
            'CRAs Aragón',
            'Equipo <a href="https://github.com/aragonopendata/JodoCoders">JodoCoders</a>: Javier Rubio Rubio, Dani Latorre Velilla, Jesús Barón Rodríguez y Rafael Ramos Guallar. Los Colegios Rurales Agrupados son los centros donde se educan muchos niños de Aragón, descubre los movimientos que estos niños tienes que hacer para acudir a clase.',
            'http://crasaragon.com/',
            'http://opendata.aragon.es/public/i/jacathon/Picto05_CRAs_Aragon_Jacathon.jpg'
        ),new Aplicacion(
            '¿Conoces Aragón?',
            'Equipo <a href="https://github.com/aragonopendata/NOTEAM">NO-TEAM</a>: Ismael Reyes Bugarín, Patricia Perochena Echave y Luís Cruz Pérez. ¿Realmente crees que conoces Aragón? Con este juego para Android podrás saber si eres el que mejor conoce la Región de Aragón.',
            'https://play.google.com/store/apps/details?id=noteam.conocesaragon',
            'http://opendata.aragon.es/public/i/jacathon/Picto08_ConocesAragon_Jacathon.jpg'
        ),new Aplicacion(
            'Visual AragoPedia',
            'Equipo <a href="https://github.com/aragonopendata/Poolparty">PoolParty</a>: Rafa García Ortega, Beatriz Martínez Martínez y Fernando Blat Peris. Descubre de forma visual e interactiva los datos que están dentro de AragoPedia',
            'http://visual-aragopedia.visualizados.com/',
            'http://opendata.aragon.es/public/i/jacathon/Picto10_Aragopedia_Jacathon.jpg'
        ),new Aplicacion(
            'Papelea',
            'Papelea es una web que facilita ayuda a los ciudadanos en sus trámites con las diferentes administraciones públicas, tanto a escala nacional, como autonómica y municipal. Así, se puede encontrar toda la documentación y datos necesarios para la realización de trámites del sector público en un único punto.',
            'http://www.papelea.com/',
            'http://opendata.aragon.es/public/i/aplicaciones/papelea.png'
        )
      ];
    
    List<WebContent> get webContents => [
        new WebContent(
            'informacion_content_1',
            'informacion',
            'QUÉ ES OPEN DATA',
            '<a href="http://es.wikipedia.org/wiki/Datos_abiertos" title="Open Data">Open Data</a> es una'+
            'iniciativa a nivel global que persigue que los datos y la información,'+
            'especialmente la que poseen las administraciones públicas, estén disponibles'+
            'para el conjunto de los ciudadanos. La publicación de la información se realiza'+
            'además de forma abierta y reutilizable, de forma que tanto ciudadanos como'+
            'empresas puedan utilizarla para su consulta, para enriquecerla'+
            'con nuevos datos o para <a href="/portal/aplicaciones" title="Generar aplicaciones y servicios">generar aplicaciones y servicios</a> con ella.<br> <br>'+
            'Tras la filosofía de Datos Abiertos se encuentra también la necesidad de dotar de'+
            'mayor transparencia al conjunto de las Administraciones Públicas y por eso esta'+
            'iniciativa está ligada a las políticas de Gobierno Abierto. De esta manera, la'+
            '<a href="/catalogo" title="Publicación de los datos">publicación de los datos</a> que "poseen las Administraciones en <a href="/portal/aragon-open-data#formatosAOD" "title="Formatos abiertos">formatos abiertos</a> es'+
            'la mejor forma de generar confianza en las instituciones, gracias tanto a la "transparencia que esto aporta al sistema", como a la exposición pública del trabajo en el que se invierten los recursos públicos.'+
            '<br> <br>'+
            'La filosofía de trabajo Open Data se está convirtiendo en una realidad de forma'+
            'acelerada. Aunque los principios sobre los que se asienta no son novedosos, el'+
            'desarrollo de la informática y las TIC ha permitido la explosión de los datos'+
            'gracias a la reducción de costes y de tiempos en su publicación y'+
            'sociabilización, por eso la apertura de datos está alcanzando tal atención e'+
            'importancia en estos momentos.'
        ),
         new WebContent(
            'informacion_content_2',
            'informacion',
            'REUTILIZACIÓN DE LA INFORMACIÓN DEL SECTOR PÚBLICO',
            'La reutilización de la información es un objetivo fundamental de las políticas de'+
            'Open Data. La información del sector público constituye una materia prima'+
            'importante para diversos productos y servicios de contenidos digitales. Por sus'+
            'funciones, la administración pública posee datos de numerosos sectores'+
            'productivos y temáticas, así se recopilan informaciones <a href="/catalogo/educacion" title="Educativas">educativas</a>, <a href="/catalogo/economia" title="Económicas">económicas</a>,'+
            '<a href="/catalogo/medio-ambiente" title="Medio ambientales">medio ambientales</a>, <a href="/catalogo/turismo" title="Turísticas">turísticas</a>, etc. que poseen un indudable interés más allá de su'+
            'propio uso administrativo. Por ello, la apertura de los datos del sector público aporta valor a la información por los sucesivos usos que se le puede dar. Estas razones suponen que la información es un nuevo motor de desarrollo económico y social y su reutilización es un paso más en la implantación de la <a href="http://es.wikipedia.org/wiki/Sociedad_de_la_información_y_del_conocimiento" title="Sociedad de la información y del conocimiento">sociedad de la información y del conocimiento</a>.'+
            '<br> <br>'+
            'Además, la igualdad en el acceso a la información y la posibilidad de la reutilización'+
            'hacen que esta se constituya como el elemento que impide el falseamiento de la'+
            'competencia. Por eso, la mera posibilidad de acceder a la reutilización'+
            'consigue mejorar la eficiencia en los mercados de información, lo que permite a'+
            'los consumidores gozar de servicios más justos.'+
            '<br> <br>'+
            'La reutilización de los datos, además de como una oportunidad económica para las'+
            'empresas que explotan la información, se convierte también en palanca para'+
            'otras mejoras sociales. Se podría hablar así, por ejemplo, del <a href="http://en.wikipedia.org/wiki/Database_journalism" title="periodismo de datos">periodismo de datos</a>,'+
            'que estructura sus historias alrededor de los datos; de la posibilidad de'+
            'desarrollar nuevas herramientas para acceder al conocimiento, que democratizan'+
            'la información entre todos los ciudadanos; o de las nuevas técnicas de <a href="http://en.wikipedia.org/wiki/Data_visualization" title="visualización de datos">visualización de datos</a>,'+
            'que permiten hacer más clara y comprensible la información que se ofrece.'+
            '<br> <br>'+
            'Se puede encontrar documentación adicional sobre reutilización de la información del'+
            'sector público en algunos informes y estudios ya publicados como "<a href="http://www.universoabierto.com/wp-content/uploads/2011/07/PAPER_REUTILIZACION_INFORMACION_PUBLICA_PRIVADA_OPENDATA.pdf" title="Reutilización de información pública y privada en España">Reutilización de información pública y privada en España</a>: Avance de situación para agentes públicos y privados. Una oportunidad para los negocios y el empleo." o'+
            '"<a href="http://datos.gob.es/datos/?q=node/2148" title="Estudio de caracterización del sector infomediario 2012">Estudio de caracterización del sector infomediario 2012</a>"'
            ),
         new WebContent(
            'informacion_content_3',
            'informacion',
            'BUENAS PRÁCTICAS',
            'Dentro del mundo de Internet, el <a href="http://www.w3c.es/" title="World Wide Web Consortium (W3C)">World Wide Web '+
            'Consortium (W3C)</a> es el organismo que se encarga de velar por el desarrollo'+
            'de estándares abiertos, libres e interoperables que aseguren el crecimiento de la Web a largo plazo. Esta'+
            'organización ha realizado una guía de publicación con pautas sobre <a href="http://www.w3.org/TR/gov-data/" '+
            'title="cómo han de publicarse datos">cómo han de publicar datos</a> los gobiernos. Estas pautas para la publicación de'+
            'los datos, tanto técnicas como de planificación, han sido seguidas para la elaboración'+
            'del catálogo de Aragón Open Data. Igualmente existen otras iniciativas generadoras de'+
            'manuales de buenas prácticas o de concienciación alrededor de los datos'+
            'abiertos como las aportadas por ejemplo por la <a href="http://sunlightfoundation.com/policy/opendata/"'+
            'title="Sunlight Foundation">Sunlight Foundation</a> o'+
            'por la <a href="http://okfn.org/opendata/" title="Open Knowledge Foundation">Open Knowledge Foundation</a>.'+
            '<br><br>'+
            'Además, dentro del ámbito estatal, la “<a href="http://red.gnoss.com/comunidad/OpenData" title="Comunidad Open Data – '+
            'RISP España">Comunidad Open Data – RISP España</a>” está trabajando en la sensibilización hacia las'+
            'políticas de Open Data y ha generado algunos documentos de interés. Entre ellos'+
            'destaca el <a href="http://red.gnoss.com/comunidad/OpenData/recurso/'+
            'Decalogo-Open-Data/58581882-63aa-4bc5-9033-90cf81f78793" title="Decálogo Open Data">Decálogo Open Data</a>, que es un'+ 
            'resumen de buenas prácticas a la hora de afrontar'+
            'políticas Open Data y que a continuación se transcribe:'+
            '<br>'+
            '<br>'+
            '<a href="http://opendata.aragon.es//public/fotos-infografias/aragon_opendata_02buenas_practicas.jpg" "="" title="Infografía sobre buenas '+
            'prácticas"><img src="http://opendata.aragon.es//public/fotos-infografias/aragon_opendata_02buenas_practicas.jpg" width="800" alt="Infografía'+ 
            'sobre buenas prácticas" title="Infografía sobre buenas prácticas"></a>'+
            '<br>'+
            'Buenas prácticas para la publicación de datos abiertos:'+
            '<br>'+
            '<br>'+
            '<u>0. Armonización entre administraciones.</u>'+
            '<br>'+
            'Todos los puntos del decálogo se basan en la premisa de que debe existir una armonización'+
            'entre todas las Administraciones. Todas las iniciativas Open Data deben'+
            'compartir los mismos principios y definiciones que se listan en el decálogo.'+
            'Este punto 0 es básico para la interoperabilidad y aprovechamiento eficiente de'+
            'las sinergias llevadas a cabo por todos los actores Open Data – RISP.'+
            '<br><br>'+
            '<u>1. Publicar datos en formatos abiertos y estándares.</u>'+
            '<br>'+
            'Cualquier iniciativa Open Data debería publicar sus conjuntos de datos en formatos'+
            'abiertos (no-propietarios) y que sean adecuados para permitir la reutilización'+
            'de los mismos por parte del colectivo reutilizador destinatario.'+
            '<br><br>'+
            '<u>2. Usar esquemas y vocabularios consensuados</u>'+
            '<br>'+
            'Además de los formatos abiertos y estándar, la estructura de los datos debería seguir un'+
            'convenio o unos esquemas definidos, si existieran. Si se crean vocabularios o'+
            'esquemas de representación de la información específicos, éstos se deberían'+
            'exponer públicamente para que el colectivo reutilizador pueda interpretar'+
            'correctamente la información.'+
            '<br><br>'+
            '<u>3. Inventario en un catálogo de datos estructurado.</u>'+
            '<br>'+
            'Cualquier iniciativa Open Data debe tener un punto de consulta donde se incluya un'+
            'inventario con información descriptiva y técnica sobre los conjuntos de datos'+
            'que se exponen. Los metadatos que informan sobre cada conjunto de datos'+
            'deberían seguir una estructura común y estándar. Asimismo, se deberían'+
            'compartir las taxonomías de temáticas u otras necesarias -p.e., toponimia- para'+
            'clasificar los conjuntos de datos dentro de los catálogos.'+
            '<br><br>'+
            '<u>4. Datos accesibles desde direcciones web persistentes y amigables.</u>'+
            '<br>'+
            'Tanto las fichas de los conjuntos de datos, como la distribución de la propia información'+
            '(volcado en un archivo, API de consulta, RSS, etc.) deberían de estar'+
            'accesibles desde URLs (direcciones web) que persistan en el tiempo y así evitar'+
            'que se pierdan las referencias en el futuro. Además deben seguir una estructura'+
            'homogénea y bien definida, con información legible para que los reutilizadores'+
            'conozcan o “intuyan” el contenido referido por dichas direcciones web.'+
            '<br><br>'+
            '<u>5. Exponer un mínimo conjunto de datos relativos al'+
            'nivel de competencias del organismo y su estrategia de exposición de datos.</u>'+
            '<br>'+
            'Cada Administración que impulse una iniciativa Open Data debería crear una hoja de'+
            'ruta donde especifique la estrategia de exposición de los conjuntos de datos y'+
            'sus prioridades. Inicialmente, debería publicar los conjuntos de mayor interés'+
            'según las competencias del propio organismo.'+
            '<br><br>'+
            '<u>6. Compromiso de servicio, actualización y calidad'+
            'del dato, manteniendo un canal eficiente de comunicación reutilizador AAPP.</u>'+
            '<br>'+
            'La Administración debe mantener un mínimo de calidad y servicio en su iniciativa Open Data,'+
            'manteniendo lo expuesto en la estrategia de publicación y comprometiéndose con'+
            'su colectivo reutilizador. Debe establecer un canal eficiente de comunicación'+
            'que permita la interacción bidireccional organismo público – reutilizadores.'+
            '<br><br>'+
            '<u>7. Monitorizar y evaluar el uso y servicio mediante métricas.</u>'+
            '<br>'+
            'La Administración debe crear métricas y evaluar sus indicadores de uso y servicio de la iniciativa Open'+
            'Data. De esta forma puede monitorizar el funcionamiento y uso, y así analizar'+
            'si se está cumpliendo el compromiso con la comunidad de reutilizadores y cuales'+
            'son las potenciales carencias del sistema o de la estrategia.'+
            '<br><br>'+
            '<u>8. Datos bajo condiciones de uso no restrictivas y comunes.</u>'+
            '<br>'+
            'Las condiciones de uso deberían ser lo menos restrictivas posible y permitir la'+
            'reutilización libre, incluso para fines comerciales. Se recomienda la creación'+
            'y uso de licencias tipo, autodocumentadas y que sean comunes entre distintas administraciones.'+
            '<br><br>'+
            '<u>9. Evangelizar y educar en el uso de datos.</u>'+
            '<br>'+
            'Es necesario educar en el uso de los datos, tanto a los colectivos de reutilización'+
            'específicos (sector TIC, periodismo, investigación, etc.) como a la sociedad en'+
            'general y así fomentar el conocimiento y la inquietud por procesar información'+
            'de una forma autónoma. Evitar el “disgusto” por los datos.'+
            '<br><br>'+
            '<u>10. Recopilar aplicaciones, herramientas y manuales'+
            'para motivar y facilitar la reutilización.</u>'+
            '<br>'+
            'Cualquier iniciativa Open Data debería recopilar ejemplos de uso y herramientas que'+
            'faciliten y motiven la reutilización de los datos que se publican.'
            ),
        new WebContent(
            'informacion_content_4',
            'informacion',
            'MARCO LEGAL EXISTENTE',
            'La normativa en la que se asientan las prácticas de apertura de datos empieza a'+
            'ser amplia tanto a nivel nacional como internacional. Como texto de mayor importancia'+
            'se puede reseñar que la introducción de la iniciativa Open Data en el contexto'+
            'europeo aparece mediante la <a href="http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=CELEX:32003L0098:ES:HTML" title="Directiva 2003/98/CE relativa a la reutilización de la información del sector público">Directiva 2003/98/CE relativa a la reutilización de la información del sector público</a> modificada por el Consejo de la Unión Europea el 15 de abril de 2013.'+
            '<br> <br>'+
            'Igualmente, a nivel europeo, tanto la Declaración Ministerial de Malmö, como la <a href="http://www.minetur.gob.es/es-es/gabineteprensa/notasprensa/documents/declaraci%C3%B3ncastellano.pdf" title="Declaración Ministerial de Granada">Declaración Ministerial de Granada</a> para la Agenda Digital Europea y la propia <a href="http://ec.europa.eu/digital-agenda/" title="Agenda Digital Europea">Agenda Digital Europea</a> tienen'+
            'presente la importancia de la reutilización de la información del sector'+
            'público dentro de sus estrategia a 2015 y 2020 y la incorporan reiteradamente'+
            'dentro de sus acciones y articulados. Dentro de la estrategia europea alrededor'+
            'de los datos abiertos, y fuera del marco legal, destaca el <a href="http://ec.europa.eu/information_society/policy/psi/docs/pdfs/mepsir/executive_summary.pdf" title="Informe MEPSIR">Informe MEPSIR</a> que supuso un gran impulso y que se realizó poco después de la'+
            'publicación de la Directiva 2003/98. El informe MEPSIR incorporaba'+
            'una metodología para la medida de la reutilización de la información del sector'+
            'público y la comparación entre los diferentes países de la UE.'+
            '<br> <br>'+
            'A nivel nacional se incorpora la reutilización de la información en el sector'+
            'público en el marco legal a partir de la <a href="http://www.boe.es/buscar/doc.php?id=BOE-A-2007-19814" title="Ley 37/2007, de 16 de noviembre, sobre reutilización de la información del sector público">Ley 37/2007, de 16 de noviembre, sobre reutilización de la información del sector'+
            'público</a> y de algunos de los contenidos de la <a href="http://www.boe.es/buscar/doc.php?id=BOE-A-2007-22440" title="Ley 56/2007, de 28 de diciembre, de Medidas de Impulso de la Sociedad de la Información">Ley 56/2007, de 28 de diciembre, de Medidas de Impulso de la Sociedad de la Información</a>. Igualmente, la <a href="https://www.boe.es/boe/dias/2013/12/10/pdfs/BOE-A-2013-12887.pdf" title="Ley 19/2013, de 9 de diciembre, de transparencia, acceso a la información pública y buen gobierno">Ley 19/2013, de 9 de diciembre, de transparencia, acceso a la información pública y buen gobierno</a>, incluye la obligación de publicar de manera activa datos sobre una serie de temas de interés. A nivel del Sector Público estatal además aparece el <a href="http://www.boe.es/boe/dias/2011/11/08/pdfs/BOE-A-2011-17560.pdf" title="Real Decreto 1495/2011, de 24 de octubre">Real Decreto 1495/2011, de 24 de octubre</a>, por el que se desarrolla la Ley 37/2007, de 16 de noviembre, sobre reutilización de la información del sector público. Recientemente además, se aprobó la <a href="http://www.boe.es/boe/dias/2013/03/04/pdfs/BOE-A-2013-2380.pdf" title="Norma Técnica de Interoperabilidad de Reutilización de recursos de la información">Norma Técnica de Interoperabilidad de Reutilización de recursos de la información</a> mediante Resolución de 19 de febrero de 2013 de la Secretaría de Estado de Administraciones Públicas. En el ámbito de las CCAA también se está comenzando a desarrollar legislación al respecto dentro de normas sobre gobierno abierto, participación y transparencia.'+
            '<br> <br>'+
            'Con estos antecedentes, el Gobierno de Aragón, mediante <a href="http://aragonhoy.aragon.es/index.php/mod.documentos/mem.descargar/fichero.documentos_20120717_CONSEJO_GOBIERNO_bea69349%232E%23pdf" title="Acuerdo de 17 de julio de 2012 ordena el inicio del proyecto de apertura de datos públicos">Acuerdo de 17 de julio de 2012 ordena el inicio del proyecto de apertura de datos públicos</a>,'+
            'en cumplimiento de la Ley 37/2007, de 16 de noviembre, de reutilización'+
            'de la información del sector público. Con este Acuerdo se da cobertura jurídica'+
            'para comenzar con la apertura de datos dentro del Gobierno de Aragón.'
            )
    ];
}
