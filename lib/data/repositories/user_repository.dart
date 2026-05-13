import 'package:dramabao_app/models/user_model.dart';
import 'package:dramabao_app/data/mock/mock_user.dart';

abstract class UserRepository {
  UserModel getCurrentUser();
}

class MockUserRepository implements UserRepository {
  bool _isLoggedIn = false;

  @override
  UserModel getCurrentUser() => _isLoggedIn ? mockUserLoggedIn : mockUserNotLoggedIn;

  void toggleLogin() => _isLoggedIn = !_isLoggedIn;
}
