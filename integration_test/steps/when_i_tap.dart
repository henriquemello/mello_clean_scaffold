import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric WhenITap() {
  return when1<String, FlutterWorld>(
    RegExp(r'When I tap the {string} button'),
    (key, context) async {
      final widgetFinder = context.world.appDriver.findBy(key, FindType.key);

      await context.world.appDriver.tap(widgetFinder);
    },
  );
}
