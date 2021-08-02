import 'package:clean_mello/modules/users/presentation/widgets/card.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric AndIShouldSeeCards() {
  return and<FlutterWorld>(
    RegExp(r'I should see cards'),
    (context) async {
      final widgetFinder =
          context.world.appDriver.findBy(CardUsers, FindType.type);

      expect(widgetFinder, findsWidgets);
    },
    configuration: StepDefinitionConfiguration()
      ..timeout = Duration(seconds: 5),
  );
}
