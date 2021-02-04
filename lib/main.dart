import 'package:flutter/material.dart';
import 'package:learn_kids_app/src/pages/home_page.dart';
import 'package:learn_kids_app/src/routes/routes.dart';

import 'package:learn_kids_app/src/preferences/preferences.dart';
import 'package:learn_kids_app/src/preferences/preferences_user.dart';

import 'package:learn_kids_app/src/delegates/app_localizations_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:dynamic_theme/dynamic_theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferencesUser();
  prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findRootAncestorStateOfType<_MyAppState>();
    state.setLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Locale _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() async{
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => new ThemeData(
        primarySwatch: Colors.indigo,
        brightness: brightness
      ),
      themedWidgetBuilder: (context, theme) {
        return _setMian(context, theme);
      },
    );
  }

  Widget _setMian( BuildContext context, ThemeData theme ) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child
        );
      },
      debugShowCheckedModeBanner: false,
      locale: _locale,
      title: 'Learn Kids App',
      initialRoute: HomePage.routeName,
      routes: getApplicationRoutes(),
      supportedLocales: [
        Locale('en', ''),
        Locale('es', '')
      ],
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale?.languageCode == locale?.languageCode && supportedLocale?.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales?.first;
      },
      theme: theme,
    );
  }
}
