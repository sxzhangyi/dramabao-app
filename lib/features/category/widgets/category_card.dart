import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/constants/layout_constants.dart';
import '../../../models/drama_model.dart';

class CategoryCard extends StatelessWidget {
  final DramaModel drama;

  const CategoryCard({super.key, required this.drama});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(LayoutConstants.borderRadius),
              child: AspectRatio(
                aspectRatio: LayoutConstants.dramaCardAspectRatio,
                child: CachedNetworkImage(
                  imageUrl: drama.coverUrl,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: AppColors.chinaRedBg,
                    child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: AppColors.chinaRedBg,
                    child: const Icon(Icons.play_circle_outline, color: AppColors.textHint),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 4,
              right: 4,
              child: _buildTag(),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          drama.title,
          style: AppTypography.body.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
            fontSize: 14 * AppTypography.scale,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 2),
        Text(
          drama.isComplete ? '全${drama.totalEpisodes}集' : '更新至${drama.currentEpisode}集',
          style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary),
        ),
      ],
    );
  }

  Widget _buildTag() {
    Color bgColor = drama.isFree ? AppColors.tagFree : (drama.isVip ? AppColors.tagVip : AppColors.tagUpdate);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(LayoutConstants.borderRadiusSmall),
      ),
      child: Text(
        drama.tagText,
        style: AppTypography.tag.copyWith(color: Colors.white, fontSize: 10 * AppTypography.scale),
      ),
    );
  }
}
