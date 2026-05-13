import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/responsive/responsive_builder.dart';
import '../../../core/constants/layout_constants.dart';
import 'providers/category_provider.dart';
import 'widgets/category_sidebar.dart';
import 'widgets/category_grid.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
      builder: (context, provider, _) {
        return Row(
          children: [
            CategorySidebar(
              categories: provider.categories,
              selectedCategory: provider.selectedCategory,
              onCategorySelected: provider.selectCategory,
            ),
            Container(width: 1, color: Theme.of(context).dividerColor),
            Expanded(
              child: CategoryGrid(dramas: provider.dramas),
            ),
          ],
        );
      },
    );
  }
}
