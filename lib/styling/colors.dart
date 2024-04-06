import 'package:flutter/material.dart';

class AppColors {
  static const Color light = Color.fromARGB(255, 249, 247, 247);
  static const Color dark = Color.fromARGB(255, 17, 45, 78);
  static const Color TextColor1 = Color.fromARGB(255, 41, 88, 145);
  static const Color TextColor2 = Color.fromARGB(255, 36, 36, 36);
}

class AppThemes {
  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.light,
    scaffoldBackgroundColor: AppColors.light,
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(
          255, 249, 247, 247),
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
        primaryColor: AppColors.dark,
        scaffoldBackgroundColor: AppColors.dark,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(
              255, 17, 45, 78), 
        ),
      );
}
