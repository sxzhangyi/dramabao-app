import 'package:dramabao_app/models/user_model.dart';

final UserModel mockUserNotLoggedIn = UserModel.notLoggedIn;

final UserModel mockUserLoggedIn = const UserModel(
  id: '1',
  nickname: '剧迷小王',
  avatarUrl: 'https://picsum.photos/seed/avatar/200/200',
  isLoggedIn: true,
  isVip: false,
  coinBalance: 12580,
  withdrawableAmount: 12.58,
);
