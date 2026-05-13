import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';
import 'data/repositories/drama_repository.dart';
import 'data/repositories/category_repository.dart';
import 'data/repositories/task_repository.dart';
import 'data/repositories/user_repository.dart';
import 'features/home/providers/home_provider.dart';
import 'features/category/providers/category_provider.dart';
import 'features/earn/providers/earn_provider.dart';
import 'features/mine/providers/mine_provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final dramaRepo = MockDramaRepository();
    final categoryRepo = MockCategoryRepository();
    final taskRepo = MockTaskRepository();
    final userRepo = MockUserRepository();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider(dramaRepo)),
        ChangeNotifierProvider(create: (_) => CategoryProvider(categoryRepo, dramaRepo)),
        ChangeNotifierProvider(create: (_) => EarnProvider(taskRepo, userRepo)),
        ChangeNotifierProvider(create: (_) => MineProvider(userRepo)),
      ],
      child: MaterialApp.router(
        title: '剧宝',
        theme: AppTheme.light,
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
