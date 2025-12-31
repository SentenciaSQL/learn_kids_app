import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'package:learn_kids_app/src/pages/home_page.dart';
import 'package:learn_kids_app/src/routes/routes.dart';

import 'package:learn_kids_app/src/delegates/app_localizations_delegate.dart';
import 'package:learn_kids_app/src/preferences/preferences.dart';
import 'package:learn_kids_app/src/preferences/preferences_user.dart';

import 'package:learn_kids_app/src/preferences/theme_notifier.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = PreferencesUser();
  await prefs.initPrefs();

  final theme = ThemeNotifier();
  await theme.load();

  runApp(
    ChangeNotifierProvider.value(
      value: theme,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) {
    final state = context.findRootAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeNotifier>();

    final themeData = ThemeData(
      primarySwatch: Colors.indigo,
      brightness: theme.brightness,
    );

    return _setMain(context, themeData);
  }

  Widget _setMain(BuildContext context, ThemeData theme) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child ?? const SizedBox.shrink(),
        );
      },
      debugShowCheckedModeBanner: false,
      locale: _locale,
      title: 'Learn Kids App',
      initialRoute: HomePage.routeName,
      routes: getApplicationRoutes(),
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (final supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      theme: theme,
    );
  }
}
