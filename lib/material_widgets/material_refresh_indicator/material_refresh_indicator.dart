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
        children: properties.children!,
      );
  }

 _assert(){
    assert((properties.itemBuilder != null && properties.children == null) || (properties.itemBuilder == null && properties.children != null));
  }

  Widget _listWiev(){
    if(properties.separatorBuilder == null){
      return ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: properties.controller,
        itemBuilder : properties.itemBuilder!,
        itemCount: properties.itemCount!,
      );
    }else{
      return ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(),
        separatorBuilder: properties.separatorBuilder!,
        controller: properties.controller,
        itemBuilder : properties.itemBuilder!,
        itemCount: properties.itemCount!,
      );
    }
  }
}