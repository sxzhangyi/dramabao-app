class UserModel {
  final String id;
  final String nickname;
  final String avatarUrl;
  final bool isLoggedIn;
  final bool isVip;
  final int coinBalance;
  final double withdrawableAmount;

  const UserModel({
    required this.id,
    required this.nickname,
    required this.avatarUrl,
    required this.isLoggedIn,
    required this.isVip,
    required this.coinBalance,
    required this.withdrawableAmount,
  });

  static const UserModel notLoggedIn = UserModel(
    id: '0',
    nickname: '点击登录',
    avatarUrl: '',
    isLoggedIn: false,
    isVip: false,
    coinBalance: 0,
    withdrawableAmount: 0,
  );
}
