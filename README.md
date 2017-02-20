# Aragon Open Data 3 - Web

Aragon Open data sigue innovando y para su tercera version implementa una version web basada en tecnologias modernas y dinamicas que añaden utilidades al usuario final simplificando el uso de la misma y ofreciendo el contenido de forma mas rapida y efectiva.

##¿Que teconologias usamos?

###Dart
Es la base de **AOD3**, todo esta construido sobre este lenguaje desde el servidor hasta la web ( excluyendo CKAN parte indispensabe en cualquier portal de datos abiertos).

Se ha decidido usar esta tecnologia ya que nos permite usar el mismo lenguaje en la parte servidora como en la cliente pudiendo generar un unico stack de aplicaciones conjuntas que pueden compartir codigo entre ellas sin ningun tipo de problema, ademas de ser apollado por google siendo usado en aplicaciones que generan millones en ingresos proporcianandonos la seguridad de que el lenguaje esta cuidado, es rapido y eficaz en sus funciones.

Tambien es un lenguaje Open Source donde podemos contribuir a sus desarrollo continuando asi nuestro apollo al Open Source desde Aragon Open Data
 
Puedes leer mas sobre Dart aqui: [DART][1]
 
###Angular 2
Como framework para la parte web decidimos usar Angular 2, un framework creado y usado por Google en proyectos criticos, que nos permite crear una pagina SPA (Single Page Aplication) con la cual servir todos nuestros servicios de una forma dinamica y mucho mas rapida que el resto de tecnologias ya que solo tendremos que cargar todo una unica solo vez.

Puedes leer mas sobre Angular 2 aqui: [ANGULAR 2][2]

###Bourbon - Sass
Para los estilos hemos utilizado un framework llamada Bourbon que usa Sass una tecnologia derivada de css que nos permite usar mas herramientas para una mejor edicion y mantenimiento de codigo mientras seguimos sirviendo css para que cualquier navegador pueda comprenderlo

Puedes leer mas sobre Bourbon aqui: [BOURBON][3]

Puedes leer mas sobre Sass aqui: [SASS][4]

##Instalación y primera ejecución

1. Debemos instalar Dart en nuestro sistema operativo, puedes encontrar las guias espedificas para tu SO desde este [LINK][5] 
2. Descargamos el repositorio
```
git clone https://github.com/aragonopendata/Aragon-Open-Data-3.git
```
3. Obtenemos las dependencias necesarias
```
pub get
```
4. Ejecutamos la aplicaciones
```
pub serve --port=8080 --mode=debug
```

Si tenemos cualquier tipo de test también podemos ejecutar
```
pub run test
```

Ahora tendremos la aplicacion en local y podremos visitarla desde el puerto 8080 en local

##Sacar la version a Producción

1.Ejecutamos los test para comprobar que todo fnciona correctamente ( si tenemos tests )
```
pub run test
```
2.Buildeamos la aplicacion
```
pub build --mode=release
```

Este comando nos generara un montón de archivos en una carpeta llamada build, simplemente movemos esa carpeta a la raíz de nuestro servidor  y podremos acceder a ella.

Es recomendable añadir esta configuración a apache para que nos carguen los links de las rutas.
```
RewriteEngine On  
  # If an existing asset or directory is requested go to it as it is
  RewriteCond %{DOCUMENT_ROOT}%{REQUEST_URI} -f [OR]
  RewriteCond %{DOCUMENT_ROOT}%{REQUEST_URI} -d
  RewriteRule ^ - [L]

  # If the requested resource doesn't exist, use index.html
  RewriteRule ^ /index.html
``` 
 
 [1]: https://www.dartlang.org/
 [2]: https://webdev.dartlang.org/angular
 [3]: http://bourbon.io/
 [4]: http://sass-lang.com/
 [5]: https://www.dartlang.org/install
