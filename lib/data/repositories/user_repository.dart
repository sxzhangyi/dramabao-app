import '../../models/user_model.dart';
import '../mock/mock_user.dart';

abstract class UserRepository {
  UserModel getCurrentUser();
}

class MockUserRepository implements UserRepository {
  bool _isLoggedIn = false;

  @override
  UserModel getCurrentUser() => _isLoggedIn ? mockUserLoggedIn : mockUserNotLoggedIn;

  void toggleLogin() => _isLoggedIn = !_isLoggedIn;
}
