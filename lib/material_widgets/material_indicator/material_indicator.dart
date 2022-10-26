import 'package:flutter/material.dart';
import '../../enums/indicator_type.dart';
import '../../models/indicator_model.dart';

class MaterialIndicatorWidget extends StatelessWidget {
  final IndicatorModel constructors;
  const MaterialIndicatorWidget({super.key, required this.constructors});

  @override
  Widget build(BuildContext context) {
    return _getWidgetByIndicatorType();
  }

  Widget _getWidgetByIndicatorType() {
    switch (constructors.indicatorType) {
      case IndicatorType.center:
        return Center(child:CircularProgressIndicator(backgroundColor: constructors.color));
      case IndicatorType.inStack:
        return Positioned.fill(child: Center(child: CircularProgressIndicator(backgroundColor: constructors.color)));
    }
  }
}