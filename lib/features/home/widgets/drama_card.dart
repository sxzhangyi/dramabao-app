import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dramabao_app/core/theme/app_colors.dart';
import 'package:dramabao_app/core/theme/app_typography.dart';
import 'package:dramabao_app/core/constants/layout_constants.dart';
import 'package:dramabao_app/models/drama_model.dart';

class DramaCard extends StatelessWidget {
  final DramaModel drama;

  const DramaCard({super.key, required this.drama});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: LayoutConstants.dramaCardWidth,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
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
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            drama.isComplete ? '全${drama.totalEpisodes}集' : '更新至${drama.currentEpisode}集',
            style: AppTypography.bodySmall.copyWith(color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }

  Widget _buildTag() {
    Color bgColor;
    Color textColor = Colors.white;

    if (drama.isFree) {
      bgColor = AppColors.tagFree;
    } else if (drama.isVip) {
      bgColor = AppColors.tagVip;
    } else {
      bgColor = AppColors.tagUpdate;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(LayoutConstants.borderRadiusSmall),
      ),
      child: Text(
        drama.tagText,
        style: AppTypography.tag.copyWith(color: textColor, fontSize: 10 * AppTypography.scale),
      ),
    );
  }
}
