import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

Future<bool> _isPresent(
  SerializableFinder byValueKey,
  FlutterDriver? driver,
) async {
  try {
    if (driver == null) {
      return false;
    }

    await driver.runUnsynchronized(() async {
      await driver.waitFor(byValueKey);
    });

    return true;
  } catch (exception) {
    return false;
  }
}

StepDefinitionGeneric GivenThatExistsStep() {
  return given1<String, FlutterWorld>(
    'I expect that there is a {string}',
    (key, context) async {
      final exists =
          await _isPresent(find.byValueKey(key), context.world.driver);

      context.expectMatch(exists, true);
    },
  );
}
