import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';
import 'package:learn_kids_app/src/languages/language_en.dart';
import 'package:learn_kids_app/src/languages/language_es.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<Languages> {

  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<Languages> load(Locale locale) => _load(locale);

  @override
  bool shouldReload(covariant LocalizationsDelegate old) => false;

  static Future<Languages> _load(Locale locale) async{
    switch (locale.languageCode) {
      case 'en':
        return LanguageEn();
      case 'es':
        return LanguageEs();
      default:
        return LanguageEn();
    }
  }

}