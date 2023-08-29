import 'package:flutter/material.dart';

const lightPrimaryColor = Color(0xff5A5a5a);
const darkPrimaryColor = Color.fromARGB(92, 0, 0, 0);

final lightColorScheme = ColorScheme.fromSeed(
    seedColor: lightPrimaryColor,
    brightness: Brightness.light,
    primary: lightPrimaryColor);
final darkColorScheme = ColorScheme.fromSeed(
  seedColor: darkPrimaryColor,
  brightness: Brightness.dark,
  primary: darkPrimaryColor,
);
