import 'package:clean_mello/modules/users/presentation/widgets/card.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:clean_mello/main_automation.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  group('Search', () {
    testWidgets("user can search users", (WidgetTester tester) async {
      // Carrega o app
      app.main();

      // Espera as animações iniciais terminarem
      await tester.pumpAndSettle();

      await Future.delayed(Duration(seconds: 2));

      // Espero que exista um widget com a key "list" visível
      final listFinder = find.byKey(Key('list'));
      expect(listFinder, findsOneWidget);

      // Espero conseguir clicar no botão com key "search"
      final searchButtonFinder = find.byKey(Key('search'));
      await tester.tap(searchButtonFinder);

      await tester.pump();

      // Espero encontrar um loading
      final loadingFinder = find.byKey(Key('loading'));
      expect(loadingFinder, findsOneWidget);

      // Espero as animações terminarem
      await tester.pumpAndSettle();

      await Future.delayed(Duration(seconds: 2));

      // Espero que exista um widget com key "list" novamente
      expect(listFinder, findsOneWidget);

      // Espero achar um ou mais widgets do tipo CardUsers
      final cardsFinder = find.byType(CardUsers);
      expect(cardsFinder, findsWidgets);

      // Espero conseguir clicar em um botão com key "clean"
      final cleanFinder = find.byKey(Key('clean'));
      await tester.tap(cleanFinder);

      // Espero as animações terminarem
      await tester.pumpAndSettle();

      await Future.delayed(Duration(seconds: 2));
    });
  });
}
