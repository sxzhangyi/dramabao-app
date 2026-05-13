import 'package:flutter/material.dart';

class AppTypography {
  static const double scale = 1.15;

  static TextStyle get logo => TextStyle(
        fontSize: 28.0 * scale,
        fontWeight: FontWeight.w900,
        fontFamily: 'Domine',
      );

  static TextStyle get h1 => TextStyle(
        fontSize: 22.0 * scale,
        fontWeight: FontWeight.w800,
      );

  static TextStyle get h2 => TextStyle(
        fontSize: 18.0 * scale,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get h3 => TextStyle(
        fontSize: 16.0 * scale,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get bodyLarge => TextStyle(
        fontSize: 16.0 * scale,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get body => TextStyle(
        fontSize: 14.0 * scale,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bodySmall => TextStyle(
        fontSize: 12.0 * scale,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get button => TextStyle(
        fontSize: 16.0 * scale,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get tag => TextStyle(
        fontSize: 11.0 * scale,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get caption => TextStyle(
        fontSize: 10.0 * scale,
        fontWeight: FontWeight.w400,
      );
}
