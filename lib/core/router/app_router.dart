import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/home_page.dart';
import '../../features/category/category_page.dart';
import '../../features/earn/earn_page.dart';
import '../../features/mine/mine_page.dart';
import '../../shared/widgets/main_shell.dart';
import 'route_names.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainShell(child: child),
      routes: [
        GoRoute(
          path: '/home',
          name: RouteNames.home,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/category',
          name: RouteNames.category,
          builder: (context, state) => const CategoryPage(),
        ),
        GoRoute(
          path: '/earn',
          name: RouteNames.earn,
          builder: (context, state) => const EarnPage(),
        ),
        GoRoute(
          path: '/mine',
          name: RouteNames.mine,
          builder: (context, state) => const MinePage(),
        ),
      ],
    ),
  ],
);
