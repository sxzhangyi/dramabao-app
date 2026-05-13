import 'package:dramabao_app/models/task_model.dart';
import 'package:dramabao_app/data/mock/mock_tasks.dart';

abstract class TaskRepository {
  List<TaskModel> getAllTasks();
}

class MockTaskRepository implements TaskRepository {
  @override
  List<TaskModel> getAllTasks() => mockTasks;
}
