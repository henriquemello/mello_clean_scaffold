import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import 'step/step.dart';
import 'step/then_i_should_see_step_or_a.dart';

Future<void> main(List<String> args) async {
  final Iterable<StepDefinitionGeneric<World>> steps = [
    GivenThatExistsStep(),
    WhenTapButtonNTimesStep(),
    ThenIShouldSeeStep(),
    ThenIShouldSeeOrAStep(),
    AndTapButtonStep(),
  ];

  final config = FlutterTestConfiguration.DEFAULT(
    steps,
    targetAppPath: 'test_driver/app.dart',
  )
    ..stepDefinitions = steps
    ..features = [RegExp('features/*.*.feature')]
    ..restartAppBetweenScenarios = false
    ..targetAppWorkingDirectory = '../'
    ..runningAppProtocolEndpointUri = args.isEmpty ? null : args[0];

  return GherkinRunner().execute(config);
}
