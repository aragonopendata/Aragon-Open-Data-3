import 'package:jaguar/jaguar.dart' as jaguar;

import 'package:campusAPI/api.dart';
import 'package:logging/logging.dart';

main(List<String> args) async {
  //load setting from a .yaml file
  await jaguar.Settings.parse(args);
  //load the api with the db in settings
  final CampusApi ca = new CampusApi(
      jaguar.Settings.getString('dbuser'),
      jaguar.Settings.getString('dbpass'),
      jaguar.Settings.getString('dburl'),
      jaguar.Settings.getString('dbname'));
  int port = int.parse(jaguar.Settings.getString('svport'));
  //load the configuration for the server
  jaguar.Configuration configuration =
      new jaguar.Configuration(multiThread: true, port: port);

  configuration.log.onRecord.listen((LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });

  configuration.addApi(new JaguarCampusApi.from(ca));
  //starts the server
  jaguar.serve(configuration);
}
