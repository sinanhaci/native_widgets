import 'package:flutter/material.dart';

class RefreshIndicatorProperties {
  final ScrollController? controller;
  final ScrollPhysics? physics;
  final Future<void> Function() onRefresh;
  final List<Widget>? children;
  final Widget Function(BuildContext, int)? separatorBuilder;
  Widget Function(BuildContext, int)? itemBuilder;
  int? itemCount;
  bool shrinkWrap;
  double? cacheExtent;
  ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  ScrollBehavior? scrollBehavior;
  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry sliverPadding;
  double androidEdgeOffset;

  RefreshIndicatorProperties({
    this.controller,
    this.physics,
    required this.onRefresh,
    this.children,
    this.itemBuilder,
    this.itemCount,
    this.shrinkWrap = false,
    this.separatorBuilder,
    this.cacheExtent,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.scrollBehavior,
    this.padding = EdgeInsets.zero,
    this.androidEdgeOffset = 0.0,
    this.sliverPadding = EdgeInsets.zero
  });
}
