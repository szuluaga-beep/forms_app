import 'package:flutter/material.dart';

class AppTheme {
  final seedColor = Colors.deepPurple;

  ThemeData getTheme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        listTileTheme: ListTileThemeData(iconColor: seedColor));
  }
}
