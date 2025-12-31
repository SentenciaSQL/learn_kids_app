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
    final String? pageRoute = ModalRoute.of(context)?.settings.name;

    final prefs = PreferencesUser();
    final bool secondaryTheme = prefs.secondaryTheme;

    final Color color = secondaryTheme ? Colors.white : Colors.indigo;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 91.0,
            child: DrawerHeader(
              child: Container(),
              decoration: BoxDecoration(
                color: secondaryTheme ? Colors.black54 : Colors.indigo,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: color),
            title: Text(Languages.of(context).homePage),
            onTap: () {
              if (pageRoute != HomePage.routeName) {
                Navigator.pushReplacementNamed(context, HomePage.routeName);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.sort_by_alpha, color: color),
            title: Text(Languages.of(context).alphabetPage),
            onTap: () {
              if (pageRoute != AlphabetPage.routeName) {
                Navigator.pushReplacementNamed(context, AlphabetPage.routeName);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.confirmation_number, color: color),
            title: Text(Languages.of(context).numbersPage),
            onTap: () {
              if (pageRoute != NumbersPage.routeName) {
                Navigator.pushReplacementNamed(context, NumbersPage.routeName);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.people_rounded, color: color),
            title: Text(Languages.of(context).professionsPage),
            onTap: () {
              if (pageRoute != ProfessionsPage.routeName) {
                Navigator.pushReplacementNamed(
                    context, ProfessionsPage.routeName);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.pets, color: color),
            title: Text(Languages.of(context).animalsPage),
            onTap: () {
              if (pageRoute != AnimalsPage.routeName) {
                Navigator.pushReplacementNamed(context, AnimalsPage.routeName);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.fastfood, color: color),
            title: Text(Languages.of(context).foodsPage),
            onTap: () {
              if (pageRoute != FoodsPage.routeName) {
                Navigator.pushReplacementNamed(context, FoodsPage.routeName);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.clean_hands, color: color),
            title: Text(Languages.of(context).signLanguagePage),
            onTap: () {
              if (pageRoute != SignLanguagePage.routeName) {
                Navigator.pushReplacementNamed(
                    context, SignLanguagePage.routeName);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: color),
            title: Text(Languages.of(context).optionsPage),
            onTap: () {
              if (pageRoute != SettingsPage.routeName) {
                Navigator.pushReplacementNamed(context, SettingsPage.routeName);
              }
            },
          ),
        ],
      ),
    );
  }
}
