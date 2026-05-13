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
      lowerBound: 0.0,
      upperBound: 1.0,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final scale = 1.0 + 0.2 * _controller.value;
        final opacity = 1.0 - 0.4 * _controller.value;
        return Transform.scale(
          scale: scale,
          child: Opacity(
            opacity: opacity,
            child: child,
          ),
        );
      },
      child: widget.child,
    );
  }
}
