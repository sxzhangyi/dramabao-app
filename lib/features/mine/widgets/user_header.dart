import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/constants/layout_constants.dart';
import '../../../core/constants/app_constants.dart';
import '../../../models/user_model.dart';

class UserHeader extends StatelessWidget {
  final UserModel user;

  const UserHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: LayoutConstants.userHeaderHeight,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        gradient: AppColors.redGoldGradient,
      ),
      child: Row(
        children: [
          Container(
            width: LayoutConstants.avatarSize,
            height: LayoutConstants.avatarSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: user.isLoggedIn
                  ? Border.all(color: AppColors.tuHaoGold, width: 3)
                  : null,
              color: user.isLoggedIn ? null : Colors.grey.shade300,
            ),
            child: user.isLoggedIn
                ? ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: user.avatarUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                      ),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.person,
                        color: Colors.white54,
                        size: 32,
                      ),
                    ),
                  )
                : const Icon(Icons.person, color: Colors.white54, size: 32),
          ),
          const SizedBox(width: 16),
          Text(
            user.isLoggedIn ? user.nickname : AppConstants.loginHint,
            style: AppTypography.h3.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18 * AppTypography.scale,
            ),
          ),
        ],
      ),
    );
  }
}
