import 'package:flutter/material.dart';
import 'package:dramabao_app/models/task_model.dart';
import 'task_item.dart';

class TaskList extends StatelessWidget {
  final List<TaskModel> tasks;

  const TaskList({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: tasks.length,
      itemBuilder: (context, index) => TaskItem(task: tasks[index]),
    );
  }
}
