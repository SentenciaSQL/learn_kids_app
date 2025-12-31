import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier {
  static const _key = 'theme_mode'; // light | dark
  Brightness _brightness = Brightness.light;

  Brightness get brightness => _brightness;

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final v = prefs.getString(_key) ?? 'light';
    _brightness = (v == 'dark') ? Brightness.dark : Brightness.light;
    notifyListeners();
  }

  Future<void> setBrightness(Brightness b) async {
    _brightness = b;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, b == Brightness.dark ? 'dark' : 'light');
  }

  Future<void> toggle() => setBrightness(
        _brightness == Brightness.dark ? Brightness.light : Brightness.dark,
      );
}
