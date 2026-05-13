import 'package:flutter/material.dart';
import '../../models/task_model.dart';
import '../../../core/theme/app_icons.dart';

final List<TaskModel> mockTasks = [
  TaskModel(
    id: '1',
    name: '看剧赚金币',
    icon: AppIcons.play,
    coinReward: 50,
    iconBgColor: const Color(0xFFFFEBEE),
  ),
  TaskModel(
    id: '2',
    name: '每日签到',
    icon: AppIcons.check,
    coinReward: 30,
    iconBgColor: const Color(0xFFE8F5E9),
  ),
  TaskModel(
    id: '3',
    name: '邀请好友',
    icon: AppIcons.personAdd,
    coinReward: 200,
    iconBgColor: const Color(0xFFE3F2FD),
  ),
  TaskModel(
    id: '4',
    name: '看广告赚金币',
    icon: AppIcons.movie,
    coinReward: 20,
    iconBgColor: const Color(0xFFFFF3E0),
  ),
  TaskModel(
    id: '5',
    name: '连续打卡奖励',
    icon: AppIcons.fire,
    coinReward: 100,
    iconBgColor: const Color(0xFFFCE4EC),
  ),
];
