import 'package:flutter/material.dart';
import 'package:grupo_mendieta/src/core/constants/colors.dart';
import 'package:grupo_mendieta/src/core/utils/theme/theme_widgets/appbar_theme.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: tSecondaryColor,
    appBarTheme: appBarTheme(),
    colorScheme: ColorScheme.fromSwatch(
      accentColor: tSecondaryColor,
    ),
  );
}
