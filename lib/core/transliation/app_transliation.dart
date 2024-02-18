import 'package:e_commerce/core/transliation/languages/ar_languages.dart';
import 'package:e_commerce/core/transliation/languages/en_languages.dart';
import 'package:e_commerce/core/transliation/languages/fr_language.dart';
import 'package:e_commerce/core/transliation/languages/tr_language.dart';
import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': ENLangauge.map,
        'ar_SA': ARLangauge.map,
        'fr_FR': FRLangauge.map,
        'tr_TR': TRLangauge.map,
      };
}

tr(String key) => key.tr;
