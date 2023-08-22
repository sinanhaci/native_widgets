import 'package:flutter/material.dart';
import '../../properties/refresh_indicator_model.dart';

class MaterialRefreshIndicator extends StatelessWidget {
  final RefreshIndicatorProperties properties;
  const MaterialRefreshIndicator({super.key,required this.properties});

  @override
  Widget build(BuildContext context) {
    _assert();
    return RefreshIndicator(
      onRefresh: properties.onRefresh,
      child: _getChildByConstructors(),
    );
  }

  Widget _getChildByConstructors(){
    return properties.children == null ? _listWiev() :
      ListView(
        shrinkWrap: properties.shrinkWrap,
        controller: properties.controller,
        cacheExtent: properties.cacheExtent,
        keyboardDismissBehavior: properties.keyboardDismissBehavior,
        padding: properties.padding,
        children: properties.children!,
      );
  }

 _assert(){
    assert((properties.itemBuilder != null && properties.children == null) || (properties.itemBuilder == null && properties.children != null));
  }

  Widget _listWiev(){
    if(properties.separatorBuilder == null){
      return ListView.builder(
        physics: properties.physics ?? const AlwaysScrollableScrollPhysics(),
        controller: properties.controller,
        itemBuilder : properties.itemBuilder!,
        itemCount: properties.itemCount!,
        cacheExtent: properties.cacheExtent,
        keyboardDismissBehavior: properties.keyboardDismissBehavior,
        shrinkWrap: properties.shrinkWrap,
        padding: properties.padding,
      );
    }else{
      return ListView.separated(
        physics: properties.physics ?? const AlwaysScrollableScrollPhysics(),
        separatorBuilder: properties.separatorBuilder!,
        controller: properties.controller,
        itemBuilder : properties.itemBuilder!,
        itemCount: properties.itemCount!,
        cacheExtent: properties.cacheExtent,
        keyboardDismissBehavior: properties.keyboardDismissBehavior,
        shrinkWrap: properties.shrinkWrap,
        padding: properties.padding,
      );
    }
  }
}