import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_icons.dart';
import '../../core/constants/layout_constants.dart';
import '../../core/router/route_names.dart';
import 'nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  int _getCurrentIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    if (location == '/category') return 1;
    if (location == '/earn') return 2;
    if (location == '/mine') return 3;
    return 0;
  }

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/category');
        break;
      case 2:
        context.go('/earn');
        break;
      case 3:
        context.go('/mine');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = _getCurrentIndex(context);

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(
          top: BorderSide(color: AppColors.divider, width: 0.5),
        ),
      ),
      child: SafeArea(
        child: SizedBox(
          height: LayoutConstants.navBarHeight,
          child: Row(
            children: [
              _buildNavItem(context, 0, AppIcons.home, '首页'),
              _buildNavItem(context, 1, AppIcons.category, '分类'),
              _buildNavItem(context, 2, AppIcons.earn, '赚钱', isEarn: true),
              _buildNavItem(context, 3, AppIcons.mine, '我的'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context,
    int index,
    IconData icon,
    String label, {
    bool isEarn = false,
  }) {
    final isSelected = _getCurrentIndex(context) == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => _onItemTapped(context, index),
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: NavItem(
            icon: icon,
            label: label,
            isSelected: isSelected,
            isEarn: isEarn,
          ),
        ),
      ),
    );
  }
}
