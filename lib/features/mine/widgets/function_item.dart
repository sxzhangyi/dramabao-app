import 'package:flutter/material.dart';
import 'package:dramabao_app/core/theme/app_colors.dart';
import 'package:dramabao_app/core/theme/app_typography.dart';
import 'package:dramabao_app/core/theme/app_icons.dart';
import 'package:dramabao_app/core/constants/layout_constants.dart';

class FunctionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const FunctionItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        height: LayoutConstants.itemHeight,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          color: AppColors.surface,
          border: Border(
            bottom: BorderSide(color: AppColors.divider, width: 1),
          ),
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.chinaRed, size: LayoutConstants.iconSizeSmall),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: AppTypography.bodyLarge.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w500,
                  fontSize: 16 * AppTypography.scale,
                ),
              ),
            ),
            Icon(Icons.chevron_right, color: AppColors.textHint, size: 20),
          ],
        ),
      ),
    );
  }
}
