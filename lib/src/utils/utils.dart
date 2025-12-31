import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'package:learn_kids_app/src/preferences/preferences.dart';

import 'package:learn_kids_app/src/classes/languages.dart';

FlutterTts flutterTts = new FlutterTts();

Locale? _locale;

String _language = '';

int? _avilable;

void playButton(BuildContext context, String letter) {
  getLocale().then((locale) async {
    _locale = locale;
    if (_locale?.languageCode == 'es') {
      _language = "es-ES";
    } else if (_locale?.languageCode == 'en') {
      _language = "en-US";
    }

    _avilable = await flutterTts.setLanguage(_language);

    if (_avilable == 1) {
      await flutterTts.setLanguage(_language);
      await flutterTts.setSpeechRate(0.8);
      await flutterTts.setVolume(1.0);
      await flutterTts.setPitch(1.0);
      await flutterTts.speak(letter);
    } else {
      showDialog(
        context: context,
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: Text(Languages.of(context).alert),
            content: Text(Languages.of(context).languageNotFound),
            actions: [
              TextButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(dialogContext).pop(); // Dismiss alert dialog
                },
              ),
            ],
          );
        },
      );
    }
  });
}
