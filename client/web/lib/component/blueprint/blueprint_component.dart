import 'package:angular2/core.dart';

import 'dart:math';
//import 'package:angular2/router.dart';


@Component(
    selector: 'blueprint',
    templateUrl: 'blueprint.html',
    )

class BlueprintComponent {
  String random = _randomString(5);
}

String _randomString(int length) {
  Random rand = new Random();
  Iterable<int> codeUnits;
  codeUnits = new Iterable<int>.generate(
      length,
      (int index)=> rand.nextInt(33)+89
  );

  return new String.fromCharCodes(codeUnits);
}