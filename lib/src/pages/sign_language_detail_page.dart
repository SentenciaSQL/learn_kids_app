import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/widgets/back_button_widget.dart';
import 'package:learn_kids_app/src/preferences/preferences_user.dart';

class SignLanguageDetailPage extends StatelessWidget {

  static final routeName = 'sign_language_detail';

  @override
  Widget build(BuildContext context) {

    bool _secondaryTheme;

    final prefs = new PreferencesUser();
    _secondaryTheme = prefs.secondaryTheme;

    final Color color = (_secondaryTheme) ? Colors.black54 : Colors.indigo;

    final List<String> stringParams = ModalRoute.of(context).settings.arguments;
    final String stringImage = stringParams[1];
    final String stringName = stringParams[0];
    final _screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _detailBodyHeader(stringImage, _screenSize.height, color),
            _detailBody(stringName)
          ],
        ),
        floatingActionButton: BackButtonPopWidget(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }

  Widget _detailBodyHeader(String stringImage, var screenSize, Color color) {
    return Container(
      height: screenSize * 0.5,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Image(
          image: AssetImage('assets/signLanguage/$stringImage.png'),
        ),
      )
    );
  }

  Widget _detailBody(String stringName) {
    return Container(
      padding: EdgeInsets.only(top: 80.0),
      child: Center(
        child: Text(stringName[0].toUpperCase() + stringName.substring(1), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
      ),
    );
  }
}
