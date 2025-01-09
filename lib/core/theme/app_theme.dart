import 'package:asocapp/core/theme/app_font_style.dart';
import 'package:asocapp/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const double borderWidth = 3.0;
  static const double borderRadius = 12.0;

  //
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      );

  static _contentPadding() => const EdgeInsets.all(27);

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    primaryColor: AppPallete.foregroundColor,
    //
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.backgroundColor,
      foregroundColor: AppPallete.foregroundColor,
      elevation: 0.0,
      centerTitle: true,
    ),
    iconTheme: const IconThemeData(color: AppPallete.foregroundColor),
    hintColor: AppPallete.hintColor,
    //
    // textTheme: const TextTheme(
    //   displayLarge: TextStyle(color: AppPallete.whiteColor, fontSize: 32.0, fontWeight: FontWeight.bold), // headline1
    //   displayMedium: TextStyle(color: AppPallete.whiteColor, fontSize: 28.0, fontWeight: FontWeight.bold), // headline2
    //   displaySmall: TextStyle(color: AppPallete.whiteColor, fontSize: 24.0, fontWeight: FontWeight.bold), // headline3
    //   headlineLarge: TextStyle(color: AppPallete.whiteColor, fontSize: 20.0, fontWeight: FontWeight.bold),
    //   headlineMedium: TextStyle(color: AppPallete.whiteColor, fontSize: 18.0, fontWeight: FontWeight.bold), // headline4
    //   headlineSmall: TextStyle(color: AppPallete.whiteColor, fontSize: 14.0, fontWeight: FontWeight.bold), // headline5
    //   titleLarge: TextStyle(color: AppPallete.whiteColor, fontSize: 20.0, fontWeight: FontWeight.normal), // headline6
    //   titleMedium: TextStyle(color: AppPallete.whiteColor, fontSize: 18.0, fontWeight: FontWeight.normal), // subtitle1
    //   titleSmall: TextStyle(color: AppPallete.whiteColor, fontSize: 16.0, fontWeight: FontWeight.normal), // subtitle2
    //   bodyLarge: TextStyle(color: AppPallete.whiteColor, fontSize: 18.0, fontWeight: FontWeight.normal), // bodyText1
    //   bodyMedium: TextStyle(color: AppPallete.whiteColor, fontSize: 16.0, fontWeight: FontWeight.normal), // bodyText2
    // ),
    //
    chipTheme: const ChipThemeData(
      color: WidgetStatePropertyAll(
        AppPallete.backgroundColor,
      ),
      side: BorderSide.none,
    ),
    //
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: _contentPadding(),
      labelStyle: AppFontStyle.semibold12_5,
      hintStyle: AppFontStyle.semibold12_5.copyWith(color: AppPallete.hintColor),
      errorStyle: const TextStyle(height: 1, fontSize: 11, color: AppPallete.errorColor),
      border: _border(),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient2),
      errorBorder: _border(AppPallete.errorColor),
    ),
    //
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        fixedSize: WidgetStateProperty.all(const Size(50, 0)),
      ),
    ),
    //
    menuTheme: MenuThemeData(
      style: MenuStyle(
        backgroundColor: const WidgetStatePropertyAll(Colors.blue),
        surfaceTintColor: const WidgetStatePropertyAll(Colors.red),
        elevation: const WidgetStatePropertyAll(10),
        side: const WidgetStatePropertyAll(BorderSide(color: Colors.black, width: 4, style: BorderStyle.solid)),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      ),
    ),
    //
    buttonTheme: const ButtonThemeData(
      alignedDropdown: true,
    ),
    //
  );

  static _buildDecoration({bool hasError = false, bool hasFocus = false}) => BoxDecoration(
        color: AppPallete.backgroundColor, // Color de fondo
        border: Border.all(
            color: hasError
                ? AppPallete.errorColor
                : hasFocus
                    ? AppPallete.gradient3
                    : AppPallete.borderColor,
            width: borderWidth), // Borde
        borderRadius: BorderRadius.circular(borderRadius), // Esquinas redondeadas
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // Cambia la posición de la sombra
          ),
        ],
      );
  //
  static buildDecoration({bool hasError = false, bool hasFocus = false}) => _buildDecoration(hasError: hasError, hasFocus: hasFocus);

  // end class
}
