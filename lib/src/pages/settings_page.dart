import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';
import 'package:learn_kids_app/src/models/language_data.dart';
import 'package:learn_kids_app/src/preferences/preferences.dart';
import 'package:learn_kids_app/src/widgets/menu_widget.dart';

import 'package:learn_kids_app/src/widgets/back_button_widget.dart';

import 'package:learn_kids_app/src/preferences/preferences_user.dart';

import 'package:dynamic_theme/dynamic_theme.dart';

class SettingsPage extends StatefulWidget {

  static final routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _secondaryTheme = false;

  final prefs = new PreferencesUser();

  @override
  void initState() {
    super.initState();
    _secondaryTheme = prefs.secondaryTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Languages.of(context).optionsPage),
      ),
      drawer: MenuWidget(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _changeColor(),
          Divider(),
          _createLanguageDropDown(),
        ],
      ),
      floatingActionButton: BackButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }



  Widget _changeColor() {
    return SwitchListTile(
      value: _secondaryTheme,
      title: Text(Languages.of(context).darkMode),
      onChanged: (value) {
        setState(() {
          _secondaryTheme = value;
          prefs.secondaryTheme = value;
          _changeColorAction();
        });
      },
    );
  }

  void _changeColorAction() {
    DynamicTheme.of(context).setBrightness(
      (_secondaryTheme == true) ? Brightness.dark : Brightness.light
    );
  }

  Widget _createLanguageDropDown() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: DropdownButton(
        isExpanded: true,
        iconSize: 30,
        hint: Text(Languages.of(context).labelSelectLanguage),
        items: LanguageData.languageList().map<DropdownMenuItem<LanguageData>>((e) => DropdownMenuItem(
          value: e,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(right: 15.0),
                child: Flag(e.flag, height: 40, width: 40),
              ),
              Container(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(e.name)
              )
            ],
          )
        )).toList(),
        onChanged: (LanguageData language) {
          changeLanguage(context, language.languageCode);
        }
      ),
    );
  }
}
