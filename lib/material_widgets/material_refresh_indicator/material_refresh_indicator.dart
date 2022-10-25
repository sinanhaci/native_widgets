import 'package:flutter/material.dart';
import '../../models/refresh_indicator_model.dart';

class MaterialRefreshIndicator extends StatelessWidget {
  final RefreshIndicatorModel constructors;
  const MaterialRefreshIndicator({super.key,required this.constructors});

  @override
  Widget build(BuildContext context) {
    _assert();
    return RefreshIndicator(
      onRefresh: constructors.onRefresh,
      child: _getChildByConstructors(),
    );
  }

  Widget _getChildByConstructors(){
    return constructors.children == null ? ListView.builder(
        controller: constructors.scrollController,
        itemBuilder : constructors.itemBuilder!,
        itemCount: constructors.itemCount!,
      ):ListView(
        shrinkWrap: constructors.shrinkWrap,
        controller: constructors.scrollController,
        children: constructors.children!,
      );
  }

 _assert(){
    assert((constructors.itemBuilder != null && constructors.children == null) || (constructors.itemBuilder == null && constructors.children != null));
  }
}