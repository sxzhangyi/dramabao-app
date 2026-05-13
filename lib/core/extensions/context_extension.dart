import 'package:flutter/material.dart';
import 'package:dramabao_app/core/theme/app_colors.dart';
import 'package:dramabao_app/core/theme/app_typography.dart';

extension ContextExtension on BuildContext {
  AppColors get appColors => AppColors();
  AppTypography get appTypography => AppTypography();

  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
}
