import 'package:flutter/material.dart';

class AppColors {
  static const Color chinaRed = Color(0xFFE53935);
  static const Color chinaRedDark = Color(0xFFC62828);
  static const Color chinaRedLight = Color(0xFFFF5252);
  static const Color chinaRedBg = Color(0xFFFFEBEE);

  static const Color tuHaoGold = Color(0xFFD4AF37);
  static const Color goldDark = Color(0xFFB8960F);
  static const Color goldLight = Color(0xFFFFD54F);
  static const Color goldBg = Color(0xFFFFF8E1);

  static const Color tagFree = Color(0xFF4CAF50);
  static const Color tagVip = Color(0xFFD4AF37);
  static const Color tagUpdate = Color(0xFF9E9E9E);

  static const Color textPrimary = Color(0xFF212121);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textHint = Color(0xFFBDBDBD);
  static const Color divider = Color(0xFFE0E0E0);
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);

  static const Color navSelected = Color(0xFFE53935);
  static const Color navUnselected = Color(0xFF9E9E9E);

  static const LinearGradient redGoldGradient = LinearGradient(
    colors: [chinaRed, tuHaoGold],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient redGoldGradientReversed = LinearGradient(
    colors: [chinaRed, tuHaoGold],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
