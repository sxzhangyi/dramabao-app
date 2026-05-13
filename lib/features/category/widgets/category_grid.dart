import 'package:flutter/material.dart';
import '../../../core/constants/layout_constants.dart';
import '../../../models/drama_model.dart';
import 'category_card.dart';

class CategoryGrid extends StatelessWidget {
  final List<DramaModel> dramas;

  const CategoryGrid({super.key, required this.dramas});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.58,
        crossAxisSpacing: 8,
        mainAxisSpacing: 12,
      ),
      itemCount: dramas.length,
      itemBuilder: (context, index) => CategoryCard(drama: dramas[index]),
    );
  }
}
