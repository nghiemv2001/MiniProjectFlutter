import 'package:flutter/material.dart';

class ThemeCustom {
  static ThemeData themeLight = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent));
}
