import 'package:flutter/material.dart';
import 'package:dramabao_app/core/theme/app_colors.dart';
import 'package:dramabao_app/core/theme/app_typography.dart';
import 'package:dramabao_app/core/theme/app_icons.dart';
import 'package:dramabao_app/core/constants/app_constants.dart';
import 'package:dramabao_app/models/user_model.dart';

class EarnBanner extends StatelessWidget {
  final UserModel user;

  const EarnBanner({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: AppColors.redGoldGradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Text(
            AppConstants.earnBannerTitle,
            style: AppTypography.h1.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 24 * AppTypography.scale,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(AppIcons.coin, color: AppColors.tuHaoGold, size: 24),
              const SizedBox(width: 4),
              Text(
                '${user.coinBalance}',
                style: AppTypography.h2.copyWith(
                  color: AppColors.tuHaoGold,
                  fontSize: 20 * AppTypography.scale,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 24),
              Text(
                '可提现: ¥${user.withdrawableAmount.toStringAsFixed(2)}',
                style: AppTypography.body.copyWith(
                  color: Colors.white,
                  fontSize: 16 * AppTypography.scale,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
