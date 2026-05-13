import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/constants/app_constants.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Text(
            title,
            style: AppTypography.h2.copyWith(color: AppColors.chinaRed),
          ),
          const Spacer(),
          Text(
            AppConstants.more,
            style: AppTypography.body.copyWith(color: AppColors.tuHaoGold),
          ),
          Icon(Icons.chevron_right, size: 16, color: AppColors.tuHaoGold),
        ],
      ),
    );
  }
}
