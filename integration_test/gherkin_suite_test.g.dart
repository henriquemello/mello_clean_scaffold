// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gherkin_suite_test.dart';

// **************************************************************************
// GherkinSuiteTestGenerator
// **************************************************************************

class _CustomGherkinIntegrationTestRunner extends GherkinIntegrationTestRunner {
  _CustomGherkinIntegrationTestRunner(
    TestConfiguration configuration,
    void Function(World) appMainFunction,
  ) : super(configuration, appMainFunction);

  @override
  void onRun() {
    testFeature0();
  }

  void testFeature0() {
    runFeature(
      'Search:',
      <String>[],
      () async {
        runScenario(
          'user can search users',
          <String>[],
          (TestDependencies dependencies) async {
            await runStep(
              'Given I expect that there is a "list"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap the "search" button',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I should see a "list"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I should see cards',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I tap the "clean" button',
              <String>[],
              null,
              dependencies,
            );
          },
        );
      },
    );
  }
}

void executeTestSuite(
  TestConfiguration configuration,
  void Function(World) appMainFunction,
) {
  _CustomGherkinIntegrationTestRunner(configuration, appMainFunction).run();
}
