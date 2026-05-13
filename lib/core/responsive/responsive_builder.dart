import 'package:flutter/material.dart';
import 'breakpoint.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget? tabletPortrait;
  final Widget? tabletLandscape;

  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    this.tabletPortrait,
    this.tabletLandscape,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= Breakpoint.tabletLandscape) {
      return tabletLandscape ?? tabletPortrait ?? mobile;
    } else if (width >= Breakpoint.tabletPortrait) {
      return tabletPortrait ?? mobile;
    }
    return mobile;
  }
}
