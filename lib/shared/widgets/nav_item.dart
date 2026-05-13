import 'package:flutter/material.dart';
import 'package:dramabao_app/core/theme/app_colors.dart';
import 'package:dramabao_app/core/theme/app_icons.dart';
import 'package:dramabao_app/core/theme/app_typography.dart';
import 'package:dramabao_app/shared/decorators/coin_shimmer_decorator.dart';

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final bool isEarn;

  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    this.isSelected = false,
    this.isEarn = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? AppColors.navSelected : AppColors.navUnselected;
    final iconWidget = Icon(icon, color: color, size: 24);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isEarn && !isSelected)
          CoinShimmerDecorator(child: iconWidget)
        else
          iconWidget,
        const SizedBox(height: 4),
        Text(
          label,
          style: AppTypography.bodySmall.copyWith(
            color: color,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
