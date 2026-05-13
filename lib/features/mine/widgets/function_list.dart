import 'package:flutter/material.dart';
import 'package:dramabao_app/core/theme/app_icons.dart';
import 'function_item.dart';

class FunctionList extends StatelessWidget {
  const FunctionList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      (AppIcons.star, '我的收藏'),
      (AppIcons.history, '观看历史'),
      (AppIcons.notification, '追剧提醒'),
      (AppIcons.wallet, '我的钱包'),
      (AppIcons.vip, '会员中心'),
      (AppIcons.settings, '设置'),
    ];

    return Column(
      children: items.map((item) {
        return FunctionItem(
          icon: item.$1,
          title: item.$2,
          onTap: () {},
        );
      }).toList(),
    );
  }
}
