import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';

import '../steps/steps.dart';

final steps = [
  GivenThatThereExists(),
  ThenIShouldSee(),
  WhenITap(),
  AndITap(),
  AndIShouldSeeCards(),
];

final configuration = FlutterTestConfiguration.DEFAULT(steps)
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
  ];
