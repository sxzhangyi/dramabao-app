import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/home_provider.dart';
import 'widgets/home_header.dart';
import 'widgets/banner_carousel.dart';
import 'widgets/quick_entries.dart';
import 'widgets/drama_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, _) {
        return ListView(
          padding: EdgeInsets.zero,
          children: [
            const HomeHeader(),
            BannerCarousel(banners: provider.banners),
            const SizedBox(height: 8),
            const QuickEntries(),
            DramaSection(title: '今日必看', dramas: provider.todayMustWatch),
            DramaSection(title: '热播TOP10', dramas: provider.hotTop10),
            DramaSection(title: '重生逆袭', dramas: provider.rebirth),
            DramaSection(title: '豪门恩怨', dramas: provider.familyFeud),
            DramaSection(title: '闪婚甜宠', dramas: provider.sweetPet),
            DramaSection(title: '都市战神', dramas: provider.urbanWar),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
