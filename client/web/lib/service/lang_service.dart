import 'dart:async';
import 'package:angular2/core.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:aod3/locale/messages_all.dart';

@Injectable()
class lang_service {

  header_datos() => Intl.message('datos',name:"header_datos",args: [],desc: "prueba header datos");
  header_datos_bancodatos() => Intl.message('datos bancodatos',name:"header_datos_bancodatos",args: [],desc: "prueba header datos bancodatos");
  header_datos_publicadores() => Intl.message('datos publicadores',name:"header_datos_publicadores",args: [],desc: "prueba header datos publicadores");
  header_datos_temas() => Intl.message('datos temas',name:"header_datos_temas",args: [],desc: "prueba header datos temas");
  List _;

  Future setup(){
    // Before we use any messages or use date formatting for a locale we must
    // call their initialization messages, which are asynchronous, since they
    // might be reading information from files or over the web. Since we are
    // running here in local mode they will all complete immediately.
    //Intl.defaultLocale = 'en';
    //var englishDatesFuture = initializeDateFormatting('en', null);
    //var englishMessagesFuture = initializeMessages('en');
    //return Future.wait([englishDatesFuture, englishMessagesFuture]);
    return null;
  }

  Map<String, dynamic> loadHeader(){
    print(Intl.message("header_datos"));
    Map<String, dynamic> phrase = {
      'header_datos':Intl.withLocale(Intl.defaultLocale, () => header_datos()),
      'header_datos_bancodatos':Intl.withLocale(Intl.defaultLocale, () => header_datos_bancodatos()),
      'header_datos_publicadores':Intl.withLocale(Intl.defaultLocale, () => header_datos_publicadores()),
      'header_datos_temas':Intl.withLocale(Intl.defaultLocale, () => header_datos_temas()),};
    return phrase;
  }
}