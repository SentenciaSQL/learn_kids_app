import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';
import 'package:learn_kids_app/src/pages/alphabet_page.dart';
import 'package:learn_kids_app/src/pages/animals_page.dart';
import 'package:learn_kids_app/src/pages/home_page.dart';
import 'package:learn_kids_app/src/pages/numbers_page.dart';
import 'package:learn_kids_app/src/pages/professions_page.dart';
import 'package:learn_kids_app/src/pages/foods_page.dart';
import 'package:learn_kids_app/src/pages/settings_page.dart';
import 'package:learn_kids_app/src/pages/sign_language_page.dart';

import 'package:learn_kids_app/src/preferences/preferences_user.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final String pageRoute = ModalRoute.of(context).settings.name;

    bool _secondaryTheme;

    final prefs = new PreferencesUser();
    _secondaryTheme = prefs.secondaryTheme;

    final Color color = (_secondaryTheme) ? Colors.white : Colors.indigo;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 91.0,
            child: DrawerHeader(
             child: Container(),
             decoration: BoxDecoration(
               color: (_secondaryTheme) ? Colors.black54 : Colors.indigo
             ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: color),
            title: Text(Languages.of(context).homePage),
            onTap: () => (HomePage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, HomePage.routeName) : null
          ),
          ListTile(
              leading: Icon(Icons.sort_by_alpha, color: color),
              title: Text(Languages.of(context).alphabetPage),
              onTap: () => (AlphabetPage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, AlphabetPage.routeName) : null
          ),
          ListTile(
              leading: Icon(Icons.confirmation_number, color: color),
              title: Text(Languages.of(context).numbersPage),
              onTap: () => (NumbersPage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, NumbersPage.routeName) : null
          ),
          ListTile(
              leading: Icon(Icons.people_rounded, color: color),
              title: Text(Languages.of(context).professionsPage),
              onTap: () => (ProfessionsPage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, ProfessionsPage.routeName) : null
          ),
          ListTile(
              leading: Icon(Icons.pets, color: color),
              title: Text(Languages.of(context).animalsPage),
              onTap: () => (AnimalsPage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, AnimalsPage.routeName) : null
          ),
          ListTile(
              leading: Icon(Icons.fastfood, color: color),
              title: Text(Languages.of(context).foodsPage),
              onTap: () => (FoodsPage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, FoodsPage.routeName) : null
          ),
          ListTile(
              leading: Icon(Icons.clean_hands, color: color),
              title: Text(Languages.of(context).signLanguagePage),
              onTap: () => (SignLanguagePage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, SignLanguagePage.routeName) : null
          ),
          ListTile(
              leading: Icon(Icons.settings, color: color),
              title: Text(Languages.of(context).optionsPage),
              onTap: () => (SettingsPage.routeName != pageRoute) ? Navigator.pushReplacementNamed(context, SettingsPage.routeName) : null
          ),
        ],
      ),
    );
  }
}
