import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/theme/app_icons.dart';
import '../../../core/constants/layout_constants.dart';
import '../../../models/task_model.dart';

class TaskItem extends StatelessWidget {
  final TaskModel task;

  const TaskItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: LayoutConstants.taskItemHeight,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.divider, width: 1),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: LayoutConstants.iconSizeMedium,
            height: LayoutConstants.iconSizeMedium,
            decoration: BoxDecoration(
              color: task.iconBgColor,
              borderRadius: BorderRadius.circular(LayoutConstants.borderRadiusMedium),
            ),
            child: Center(
              child: Icon(task.icon, color: AppColors.chinaRed, size: 28),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  task.name,
                  style: AppTypography.bodyLarge.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '+${task.coinReward}币',
                  style: AppTypography.body.copyWith(
                    color: AppColors.chinaRed,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: LayoutConstants.buttonWidthSmall,
            height: LayoutConstants.buttonHeightSmall,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.chinaRed),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(LayoutConstants.borderRadius),
                ),
                padding: EdgeInsets.zero,
              ),
              child: Text(
                '去完成',
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.chinaRed,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
