import 'package:flutter/material.dart';
import 'package:dramabao_app/data/repositories/user_repository.dart';
import 'package:dramabao_app/models/user_model.dart';

class MineProvider extends ChangeNotifier {
  final UserRepository _userRepo;

  MineProvider(this._userRepo) {
    _loadData();
  }

  UserModel _user = UserModel.notLoggedIn;

  UserModel get user => _user;

  void _loadData() {
    _user = _userRepo.getCurrentUser();
    notifyListeners();
  }

  void toggleLogin() {
    if (_userRepo is MockUserRepository) {
      (_userRepo as MockUserRepository).toggleLogin();
    }
    _loadData();
  }
}
