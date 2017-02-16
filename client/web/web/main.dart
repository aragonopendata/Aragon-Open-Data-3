import 'dart:html';
import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:aod3/component/main/app_component.dart';

void main() {
  bootstrap(AppComponent,<dynamic>[
    provide(ExceptionHandler, useClass: BrowserExceptionHandler),
  ]);

}
@Injectable()
class BrowserExceptionHandler implements ExceptionHandler {
  const BrowserExceptionHandler();

  @override
  void call(dynamic exception, [dynamic stackTrace, String reason]) {
    window.console.error(ExceptionHandler.exceptionToString(
      exception,
      stackTrace,
      reason,
    ));
  }
}