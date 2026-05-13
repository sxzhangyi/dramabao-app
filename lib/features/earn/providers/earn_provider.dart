import 'package:flutter/material.dart';
import '../../../data/repositories/task_repository.dart';
import '../../../data/repositories/user_repository.dart';
import '../../../models/task_model.dart';
import '../../../models/user_model.dart';

class EarnProvider extends ChangeNotifier {
  final TaskRepository _taskRepo;
  final UserRepository _userRepo;

  EarnProvider(this._taskRepo, this._userRepo) {
    _loadData();
  }

  List<TaskModel> _tasks = [];
  UserModel _user = UserModel.notLoggedIn;

  List<TaskModel> get tasks => _tasks;
  UserModel get user => _user;

  void _loadData() {
    _tasks = _taskRepo.getAllTasks();
    _user = _userRepo.getCurrentUser();
    notifyListeners();
  }
}
