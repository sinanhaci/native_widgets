import 'package:flutter/material.dart';

class RefreshIndicatorModel {
  final ScrollController? scrollController;
  final ScrollPhysics? physics;
  final Future<void> Function() onRefresh;
  final List<Widget>? children;
  Widget Function(BuildContext, int)? itemBuilder;
  int? itemCount;
  bool shrinkWrap;

  RefreshIndicatorModel({
    this.scrollController,
    this.physics,
    required this.onRefresh,
    this.children,
    this.itemBuilder,
    this.itemCount,
    this.shrinkWrap = false}
  );
}
