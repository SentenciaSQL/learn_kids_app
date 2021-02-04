import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';
import 'package:learn_kids_app/src/widgets/menu_widget.dart';
import 'package:learn_kids_app/src/widgets/pop_up_menu_button_widget.dart';

import 'package:learn_kids_app/src/pages/alphabet_page.dart';
import 'package:learn_kids_app/src/pages/animals_page.dart';
import 'package:learn_kids_app/src/pages/numbers_page.dart';
import 'package:learn_kids_app/src/pages/professions_page.dart';
import 'package:learn_kids_app/src/pages/foods_page.dart';
import 'package:learn_kids_app/src/pages/sign_language_page.dart';

class HomePage extends StatefulWidget {

  static final routeName = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).homePage),
        actions: [
          PopUpMenuButtonWidget()
        ],
      ),
      drawer: MenuWidget(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: _menuOptions(),
        ),
      )
    );
  }

  Widget _menuOptions() {
    return Table(
      children: [
        TableRow(
          children: [
            _createOption(AlphabetPage.routeName, 'toys.png', Languages.of(context).alphabetPage),
            _createOption(NumbersPage.routeName, 'countdown.png', Languages.of(context).numbersPage),
          ]
        ),
        TableRow(
            children: [
              _createOption(AnimalsPage.routeName, 'dog.png', Languages.of(context).animalsPage),
              _createOption(ProfessionsPage.routeName, 'doctor.png', Languages.of(context).professionsPage),
            ]
        ),
        TableRow(
            children: [
              _createOption(FoodsPage.routeName, 'diet.png', Languages.of(context).foodsPage),
              _createOption(SignLanguagePage.routeName, 'sign-language.png', Languages.of(context).signLanguagePage),
            ]
        )
      ],
    );
  }

  Widget _createOption(String routeName, String icon, String name) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        height: 180.0,
        child: ClipRRect(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 5.0),
              Container(
                child: Image(
                  width: 100,
                  image: AssetImage('assets/menu/$icon'),
                  fit: BoxFit.cover,
                ),
              ),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 5.0),
            ],
          ),
        ),
      ),
    );
  }
}
