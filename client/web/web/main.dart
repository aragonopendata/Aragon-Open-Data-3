import 'dart:async';
import 'package:angular2/platform/browser.dart';
import 'package:aod3/component/main/app_component.dart';
import 'package:intl/intl.dart';
import 'package:aod3/locale/messages_all.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  //Intl.defaultLocale = 'es';
  print(Intl.systemLocale);

  var englishDatesFuture = initializeDateFormatting('en', null);
  var englishMessagesFuture = initializeMessages('en');
  Future.wait([
    englishDatesFuture,
    englishMessagesFuture])
  .then((_){
    bootstrap(AppComponent);
  });

}