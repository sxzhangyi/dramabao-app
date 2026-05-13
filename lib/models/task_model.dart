import 'package:flutter/material.dart';

class TaskModel {
  final String id;
  final String name;
  final IconData icon;
  final int coinReward;
  final Color iconBgColor;

  const TaskModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.coinReward,
    required this.iconBgColor,
  });
}
