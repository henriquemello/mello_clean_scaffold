import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';

import 'package:clean_mello/main_automation.dart' as app;

import 'steps/steps.dart';

part 'gherkin_suite_test.g.dart';

@GherkinTestSuite()
void main() {
  final steps = [
    GivenThatThereExists(),
    ThenIShouldSee(),
    WhenITap(),
    AndITap(),
  ];

  executeTestSuite(
    FlutterTestConfiguration.DEFAULT(steps)
      ..reporters = [
        StdoutReporter(MessageLevel.error)
          ..setWriteLineFn(print)
          ..setWriteFn(print),
        ProgressReporter()
          ..setWriteLineFn(print)
          ..setWriteFn(print),
        TestRunSummaryReporter()
          ..setWriteLineFn(print)
          ..setWriteFn(print),
        JsonReporter(
          writeReport: (_, __) => Future<void>.value(),
        ),
      ],
    (World world) => app.main(),
  );
}
