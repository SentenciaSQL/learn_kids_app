import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';

import 'package:learn_kids_app/src/pages/settings_page.dart';

enum WhyFarther { configuration, darkMode, lightMode }

class PopUpMenuButtonWidget extends StatefulWidget {
  @override
  _PopUpMenuButtonWidgetState createState() => _PopUpMenuButtonWidgetState();
}

class _PopUpMenuButtonWidgetState extends State<PopUpMenuButtonWidget> {
  WhyFarther _selection;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (WhyFarther result) {
        setState(() {
          _selection = result;
          if(_selection == WhyFarther.configuration) {
            Navigator.pushReplacementNamed(context, SettingsPage.routeName);
          }
          print(_selection);
        });
      },
      itemBuilder: ( BuildContext context ) => <PopupMenuEntry<WhyFarther>> [
        PopupMenuItem(
          value: WhyFarther.configuration,
          child: ListTile(
            title: Text(Languages.of(context).optionsPage),
            trailing: Icon(Icons.settings),
          ),
        )
      ],
    );
  }

}
