import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import 'package:clean_mello/main_automation.dart' as app;

import 'gherkin/configuration.dart';

part 'gherkin_suite_test.g.dart';

@GherkinTestSuite()
void main() {
  executeTestSuite(
    configuration,
    (World world) => app.main(),
  );
}
