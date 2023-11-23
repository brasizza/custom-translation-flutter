import 'dart:convert';

import 'package:flutter/services.dart';

class AppTranslation {
  static Map<String, String> _ptKeys = {};
  static Map<String, String> _enKeys = {};
  static Map<String, String> _esKeys = {};
  static String currentLocale = '';
  static Future<void> init() async {
    _ptKeys = Map<String, String>.from(jsonDecode(await rootBundle.loadString('assets/locales/pt.json')));
    _enKeys = Map<String, String>.from(jsonDecode(await rootBundle.loadString('assets/locales/en.json')));
    _esKeys = Map<String, String>.from(jsonDecode(await rootBundle.loadString('assets/locales/es.json')));
    // return this;
  }

  static Map<String, Map<String, String>> get keys => {
        'pt': _ptKeys,
        'en': _enKeys,
        'es': _esKeys,
      };
}
