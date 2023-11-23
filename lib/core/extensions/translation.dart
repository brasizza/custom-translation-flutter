import '../translation/app_translation.dart';

extension Translation on String {
  String get translate {
    if (!AppTranslation.keys[AppTranslation.currentLocale]!.containsKey(this)) {
      return this;
    } else {
      return AppTranslation.keys[AppTranslation.currentLocale]![this] ?? this;
    }
  }
}
