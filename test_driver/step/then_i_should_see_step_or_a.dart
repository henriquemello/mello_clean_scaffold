import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

Future<bool> _isPresent(
  SerializableFinder key,
  SerializableFinder anotherKey,
  FlutterDriver? driver,
) async {
  bool found = false;

  if (driver == null) {
    return found;
  }

  try {
    await driver.runUnsynchronized(() async {
      await driver.waitFor(key, timeout: Duration(seconds: 3));
    });

    found = true;

    return found;
  } catch (_) {}

  try {
    await driver.runUnsynchronized(() async {
      await driver.waitFor(anotherKey, timeout: Duration(seconds: 3));
    });

    found = true;

    return found;
  } catch (exception) {
    return found;
  }
}

StepDefinitionGeneric ThenIShouldSeeOrAStep() {
  return then2<String, String, FlutterWorld>(
    'I should see a {string} or a {string}',
    (key, anotherKey, context) async {
      final exists = await _isPresent(
        find.byValueKey(key),
        find.byValueKey(anotherKey),
        context.world.driver,
      );

      context.expectMatch(exists, true);
    },
  );
}
