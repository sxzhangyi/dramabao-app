import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/mine_provider.dart';
import 'widgets/user_header.dart';
import 'widgets/function_list.dart';

class MinePage extends StatelessWidget {
  const MinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MineProvider>(
      builder: (context, provider, _) {
        return ListView(
          padding: EdgeInsets.zero,
          children: [
            UserHeader(user: provider.user),
            const SizedBox(height: 16),
            const FunctionList(),
          ],
        );
      },
    );
  }
}
