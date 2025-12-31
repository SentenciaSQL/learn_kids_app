import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/classes/languages.dart';
import 'package:learn_kids_app/src/pages/settings_page.dart';

enum WhyFarther { configuration, darkMode, lightMode }

class PopUpMenuButtonWidget extends StatelessWidget {
  const PopUpMenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhyFarther>(
      onSelected: (result) {
        if (result == WhyFarther.configuration) {
          Navigator.pushReplacementNamed(context, SettingsPage.routeName);
        }
      },
      itemBuilder: (context) => <PopupMenuEntry<WhyFarther>>[
        PopupMenuItem<WhyFarther>(
          value: WhyFarther.configuration,
          child: ListTile(
            title: Text(Languages.of(context).optionsPage),
            trailing: Icon(Icons.settings),
          ),
        ),
      ],
    );
  }
}
