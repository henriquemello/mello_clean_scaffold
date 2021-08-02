import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric GivenThatThereExists() {
  return given1<String, FlutterWorld>(
    RegExp(r'I expect that there is a {string}'),
    (key, context) async {
      final widgetFinder = context.world.appDriver.findBy(key, FindType.key);

      expect(widgetFinder, findsOneWidget);
    },
  );
}
