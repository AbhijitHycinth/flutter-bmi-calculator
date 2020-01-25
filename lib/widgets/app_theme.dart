import 'package:flutter/material.dart';

final Main_Color = Color(0xFF0B061C);

final primaryText = TextStyle(
    color: Colors.white,
    fontFamily: "GenderIcons",
    fontSize: 20,
    fontStyle: FontStyle.italic);
final iconThemeData = IconThemeData(
  size: 100,
  color: Colors.white,
);

final appTheme = ThemeData(
    canvasColor: Main_Color,
    appBarTheme: AppBarTheme(color: Main_Color),
    textTheme:
        TextTheme(title: TextStyle(color: Colors.white), body1: primaryText),
    iconTheme: iconThemeData);
