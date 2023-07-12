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

  RefreshIndicatorProperties({
    this.controller,
    this.physics,
    required this.onRefresh,
    this.children,
    this.itemBuilder,
    this.itemCount,
    this.shrinkWrap = false,
    this.separatorBuilder
  });
}
