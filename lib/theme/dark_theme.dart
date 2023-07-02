import 'package:flutter/material.dart';

ThemeData dark({Color color = const Color(0xFF115056)}) => ThemeData(
      fontFamily: 'Roboto',
      primaryColor: color,
      secondaryHeaderColor: Color(0xFFF5A832),
      disabledColor: Color(0xffa2a7ad),
      backgroundColor: Color(0xFF343636),
      errorColor: Color(0xFFdd3135),
      brightness: Brightness.dark,
      hintColor: Color(0xFFbebebe),
      cardColor: Colors.black,
      colorScheme: ColorScheme.dark(primary: color, secondary: color),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: color)),
    );
