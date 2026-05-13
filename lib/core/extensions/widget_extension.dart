import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget withPadding(EdgeInsets padding) => Padding(padding: padding, child: this);

  Widget withPaddingAll(double value) => Padding(padding: EdgeInsets.all(value), child: this);

  Widget withPaddingHorizontal(double value) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: value), child: this);

  Widget withTap(VoidCallback onTap) => GestureDetector(onTap: onTap, child: this);

  Widget withExpanded() => Expanded(child: this);

  Widget withCenter() => Center(child: this);

  Widget withClipRRect(BorderRadius borderRadius) =>
      ClipRRect(borderRadius: borderRadius, child: this);
}
