import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'btnSearch': 'Search posts..',
          'btnChangeLocale': 'Change Locale',
          'btnChangeTheme': 'Change theme',
          'appBarTittle': 'Hi, @name. Welcome! ',
        },
        'pt_BR': {
          'btnSearch': 'Buscar posts..',
          'btnChangeLocale': 'Mudar localização',
          'btnChangeTheme': 'Mudar tema',
          'appBarTittle': 'Oi, @name. Bem-vindo!',
        },
      };
}
