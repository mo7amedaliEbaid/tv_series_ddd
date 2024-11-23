import 'package:flutter/material.dart';

import '../../../../presentation/helpers/localization_helper.dart';
import '../../../../presentation/styles/styles.dart';

enum AppLocale {
  english('en', 'assets/icons/languages_icons/english.png',
      FontStyles.familyPoppins),
  arabic('ar', 'assets/icons/languages_icons/arabic.png',
      FontStyles.familyPoppins);

  const AppLocale(this.code, this.flag, this.fontFamily);

  final String code;
  final String flag;
  final String fontFamily;
}

extension LanguageExtension on AppLocale {
  String getLanguageName(BuildContext context) {
    switch (this) {
      case AppLocale.english:
        return tr(context).english;
      case AppLocale.arabic:
        return tr(context).arabic;
    }
  }
}
