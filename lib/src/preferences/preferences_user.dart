import 'package:shared_preferences/shared_preferences.dart';

class PreferencesUser {
  static final PreferencesUser _instance = PreferencesUser._internal();

  factory PreferencesUser() => _instance;

  PreferencesUser._internal();

  late SharedPreferences _prefs;

  Future<void> initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool get secondaryTheme {
    return _prefs.getBool('secondaryTheme') ?? false;
  }

  set secondaryTheme(bool value) {
    _prefs.setBool('secondaryTheme', value);
  }
}
