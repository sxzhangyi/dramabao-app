import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/constants/layout_constants.dart';

class QuickEntries extends StatelessWidget {
  const QuickEntries({super.key});

  @override
  Widget build(BuildContext context) {
    final entries = ['免费专区', '会员专区', '新剧上线', '热播榜'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: entries.map((label) {
          return Expanded(
            child: Container(
              height: LayoutConstants.buttonHeight,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: AppColors.chinaRed,
                borderRadius: BorderRadius.circular(LayoutConstants.borderRadius),
              ),
              child: Center(
                child: Text(
                  label,
                  style: AppTypography.body.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14 * AppTypography.scale,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
