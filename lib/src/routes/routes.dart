import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/pages/alphabet_page.dart';
import 'package:learn_kids_app/src/pages/animals_page.dart';
import 'package:learn_kids_app/src/pages/foods_page.dart';
import 'package:learn_kids_app/src/pages/home_page.dart';
import 'package:learn_kids_app/src/pages/numbers_page.dart';
import 'package:learn_kids_app/src/pages/professions_page.dart';
import 'package:learn_kids_app/src/pages/settings_page.dart';
import 'package:learn_kids_app/src/pages/sign_language_page.dart';
import 'package:learn_kids_app/src/pages/sign_language_detail_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {
    HomePage.routeName : ( BuildContext context ) => HomePage(),
    AlphabetPage.routeName : ( BuildContext context ) => AlphabetPage(),
    AnimalsPage.routeName : ( BuildContext context ) => AnimalsPage(),
    FoodsPage.routeName : ( BuildContext context ) => FoodsPage(),
    ProfessionsPage.routeName : ( BuildContext context ) => ProfessionsPage(),
    SignLanguagePage.routeName : ( BuildContext context ) => SignLanguagePage(),
    NumbersPage.routeName : ( BuildContext context ) => NumbersPage(),
    SettingsPage.routeName : ( BuildContext context ) => SettingsPage(),
    SignLanguageDetailPage.routeName : ( BuildContext context ) => SignLanguageDetailPage()
  };

}

