import 'package:flutter/cupertino.dart';
import '../../properties/refresh_indicator_model.dart';
import 'dart:math' as math;

class CupertinoRefreshIndicator extends StatelessWidget {
  final RefreshIndicatorProperties properties;
  const CupertinoRefreshIndicator({super.key, required this.properties});

  @override
  Widget build(BuildContext context) {
    _assert();
    return CustomScrollView(
      semanticChildCount: properties.itemCount,
      shrinkWrap: properties.shrinkWrap,
      cacheExtent: properties.cacheExtent,
      keyboardDismissBehavior: properties.keyboardDismissBehavior,
      scrollBehavior: properties.scrollBehavior,
      controller: properties.controller,
      key: const Key('_cupertino_refresh_indicator'),
      physics: properties.physics ??
          const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
      slivers: <Widget>[
        SliverPadding(
          padding: properties.sliverPadding,
          sliver: CupertinoSliverRefreshControl(
            onRefresh: properties.onRefresh,
          ),
        ),
        SliverPadding(
          padding: properties.padding,
          sliver: SliverList(
              delegate: _getDelegateByConstructors(),
            ),
        )
      ],
    );
  }

  SliverChildDelegate _getDelegateByConstructors() {
    return properties.children == null
        ? _listView()
        : SliverChildListDelegate(properties.children!);
  }

  _assert() {
    assert((properties.itemBuilder != null && properties.children == null) ||
        (properties.itemBuilder == null && properties.children != null));
  }

  SliverChildBuilderDelegate _listView() {
    if (properties.separatorBuilder == null) {
      return SliverChildBuilderDelegate(
        properties.itemBuilder!,
        childCount: properties.itemCount!,
      );
    } else {
      return SliverChildBuilderDelegate(
        childCount: math.max(0, properties.itemCount! * 2 - 1),
        (context, index) {
          final int itemIndex = index ~/ 2;
          if (index.isEven) {
            return properties.itemBuilder!(context, itemIndex);
          }
          return properties.separatorBuilder!(context, itemIndex);
        },
        semanticIndexCallback: (Widget widget, int localIndex) {
          if (localIndex.isEven) {
            return localIndex ~/ 2;
          }
          return null;
        },
      );
    }
  }
}
