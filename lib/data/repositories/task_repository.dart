import '../../models/task_model.dart';
import '../mock/mock_tasks.dart';

abstract class TaskRepository {
  List<TaskModel> getAllTasks();
}

class MockTaskRepository implements TaskRepository {
  @override
  List<TaskModel> getAllTasks() => mockTasks;
}
