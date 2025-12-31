import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/widgets/back_button_widget.dart';
import 'package:learn_kids_app/src/preferences/preferences_user.dart';

class SignLanguageDetailPage extends StatelessWidget {
  static final routeName = 'sign_language_detail';

  @override
  Widget build(BuildContext context) {
    final prefs = PreferencesUser();
    final bool secondaryTheme = prefs.secondaryTheme;

    final Color color = secondaryTheme ? Colors.black54 : Colors.indigo;

    final args = ModalRoute.of(context)?.settings.arguments;
    final List<String> stringParams = (args as List).cast<String>();

    final String stringImage = stringParams[1];
    final String stringName = stringParams[0];
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _detailBodyHeader(stringImage, screenSize.height, color),
            _detailBody(stringName),
          ],
        ),
        floatingActionButton: BackButtonPopWidget(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }

  Widget _detailBodyHeader(
      String stringImage, double screenHeight, Color color) {
    return Container(
      height: screenHeight * 0.5,
      width: double.infinity,
      decoration: BoxDecoration(color: color),
      padding: const EdgeInsets.all(25),
      child: Image(
        image: AssetImage('assets/signLanguage/$stringImage.png'),
      ),
    );
  }

  Widget _detailBody(String stringName) {
    return Container(
      padding: const EdgeInsets.only(top: 80.0),
      child: Center(
        child: Text(
          stringName[0].toUpperCase() + stringName.substring(1),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),
    );
  }
}
