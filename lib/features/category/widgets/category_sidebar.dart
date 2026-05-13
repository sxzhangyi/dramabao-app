import 'package:flutter/material.dart';
import 'package:dramabao_app/core/theme/app_colors.dart';
import 'package:dramabao_app/core/theme/app_typography.dart';
import 'package:dramabao_app/core/constants/layout_constants.dart';
import 'package:dramabao_app/models/category_model.dart';

class CategorySidebar extends StatelessWidget {
  final List<CategoryModel> categories;
  final CategoryModel selectedCategory;
  final ValueChanged<CategoryModel> onCategorySelected;

  const CategorySidebar({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: LayoutConstants.categorySidebarWidth,
      color: AppColors.surface,
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = category.id == selectedCategory.id;

          return GestureDetector(
            onTap: () => onCategorySelected(category),
            behavior: HitTestBehavior.opaque,
            child: Container(
              height: LayoutConstants.itemHeight,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.chinaRed : AppColors.surface,
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.divider,
                    width: LayoutConstants.dividerHeight,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  category.name,
                  style: AppTypography.body.copyWith(
                    color: isSelected ? Colors.white : AppColors.textSecondary,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                    fontSize: (isSelected ? 14 : 13) * AppTypography.scale,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
