import 'package:flutter/material.dart';
import 'package:webpoint_test/core/configs/style/colors.dart';
import 'package:webpoint_test/core/configs/style/text_styles.dart';

class AppTheme {
  static final defaultTheme = ThemeData(
    fontFamily: "Helvetica Neue",
    backgroundColor: Palette.background,
    useMaterial3: true,
    textTheme: TextTheme(
        headline1: AppTextStyle.heading1,
        headline2: AppTextStyle.heading2,
        headline3: AppTextStyle.heading3,
        headline4: AppTextStyle.heading4,
        headline5: AppTextStyle.heading5,
        headline6: AppTextStyle.heading6,
        subtitle1: AppTextStyle.bodyLarge,
        bodyText1: AppTextStyle.bodyMedium,
        bodyText2: AppTextStyle.bodySmall,
        button: AppTextStyle.button,
        caption: AppTextStyle.caption,
        overline: AppTextStyle.overline),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      isDense: true,
      labelStyle: AppTextStyle.caption,
      border: OutlineInputBorder(),
    ),
  );
}
