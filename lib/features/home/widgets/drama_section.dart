import 'package:flutter/material.dart';
import '../../../models/drama_model.dart';
import 'section_header.dart';
import 'drama_card.dart';

class DramaSection extends StatelessWidget {
  final String title;
  final List<DramaModel> dramas;

  const DramaSection({super.key, required this.title, required this.dramas});

  @override
  Widget build(BuildContext context) {
    if (dramas.isEmpty) return const SizedBox.shrink();

    return Column(
      children: [
        SectionHeader(title: title),
        SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: dramas.length,
            itemBuilder: (context, index) => DramaCard(drama: dramas[index]),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
