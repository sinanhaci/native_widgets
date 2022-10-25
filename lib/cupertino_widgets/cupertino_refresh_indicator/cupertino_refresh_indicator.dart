import 'package:flutter/cupertino.dart';
import '../../models/refresh_indicator_model.dart';

class CupertinoRefreshIndicator extends StatelessWidget {
  final RefreshIndicatorModel constructors;
  const CupertinoRefreshIndicator({super.key,required this.constructors});

  @override
  Widget build(BuildContext context) {
    _assert();
    return CustomScrollView(
      shrinkWrap: true,
      controller: constructors.scrollController,
      key: const Key('_cupertino_refresh_indicator'),
      physics: constructors.physics ??
          const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
      slivers: <Widget>[
        CupertinoSliverRefreshControl(
          onRefresh: constructors.onRefresh,
        ),
        SliverList(
          delegate: _getDelegateByConstructors(),
        )
      ],
    );
  }
  SliverChildDelegate _getDelegateByConstructors(){
    return constructors.children == null ? SliverChildBuilderDelegate(
        constructors.itemBuilder!,
        childCount: constructors.itemCount!,
      ):SliverChildListDelegate(constructors.children!);
  }

  _assert(){
    assert((constructors.itemBuilder != null && constructors.children == null) || (constructors.itemBuilder == null && constructors.children != null));
  }
}