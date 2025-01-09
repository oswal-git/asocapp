import 'package:asocapp/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppFontStyle {
  static TextStyle regular12_5 = const TextStyle(color: AppPallete.foregroundColor, fontSize: 12.5, fontWeight: FontWeight.normal);
  static TextStyle regular14 = regular12_5.copyWith(fontSize: 14.0);

  static TextStyle semibold12_5 = regular12_5.copyWith(fontWeight: FontWeight.w600);
  static TextStyle semibold14 = semibold12_5.copyWith(fontSize: 14.0, letterSpacing: 0.1);

  static TextStyle bold16 = regular12_5.copyWith(fontWeight: FontWeight.w700, fontSize: 16.0, letterSpacing: 0.1);
  static TextStyle bold18 = bold16.copyWith(fontSize: 18.0, letterSpacing: -0.5);
}
