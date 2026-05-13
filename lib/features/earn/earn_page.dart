import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/constants/layout_constants.dart';
import 'providers/earn_provider.dart';
import 'widgets/earn_banner.dart';
import 'widgets/task_list.dart';

class EarnPage extends StatelessWidget {
  const EarnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<EarnProvider>(
      builder: (context, provider, _) {
        return ListView(
          padding: EdgeInsets.zero,
          children: [
            EarnBanner(user: provider.user),
            const SizedBox(height: 8),
            TaskList(tasks: provider.tasks),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                height: LayoutConstants.buttonHeight + 4,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.chinaRed,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(LayoutConstants.borderRadius),
                    ),
                    textStyle: AppTypography.button,
                  ),
                  child: const Text(AppConstants.withdrawNow),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
