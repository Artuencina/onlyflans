//Tema claro
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.amber[800]!,
    brightness: Brightness.light,
  ),
  primaryColor: Colors.amber[800],
  textTheme: GoogleFonts.robotoTextTheme(),
  fontFamily: GoogleFonts.roboto().fontFamily,
  iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
    textStyle: MaterialStatePropertyAll(
      GoogleFonts.roboto().copyWith(
        color: Colors.amber,
      ),
    ),
  )),
);

//Tema oscuro
final ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.amber[800]!,
      brightness: Brightness.dark,
      background: Colors.black),
  primaryColor: Colors.amber[800],
  textTheme: GoogleFonts.robotoTextTheme(),
  fontFamily: GoogleFonts.roboto().fontFamily,
);
