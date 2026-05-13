import 'package:flutter/material.dart';

class CoinShimmerDecorator extends StatefulWidget {
  final Widget child;

  const CoinShimmerDecorator({super.key, required this.child});

  @override
  State<CoinShimmerDecorator> createState() => _CoinShimmerDecoratorState();
}

class _CoinShimmerDecoratorState extends State<CoinShimmerDecorator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scale = 1.0 + 0.2 * _controller.value;
    final opacity = 1.0 - 0.4 * _controller.value;
    return Transform.scale(
      scale: scale,
      child: Opacity(
        opacity: opacity,
        child: widget.child,
      ),
    );
  }
}
