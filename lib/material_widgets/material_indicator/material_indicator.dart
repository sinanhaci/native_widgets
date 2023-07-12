import 'package:flutter/material.dart';
import '../../enums/indicator_type.dart';
import '../../properties/progress_indicator_properties.dart';

class MaterialIndicatorWidget extends StatelessWidget {
  final ProgressIndicatorProperties properties;
  const MaterialIndicatorWidget({super.key, required this.properties});

  @override
  Widget build(BuildContext context) {
    return _getWidgetByIndicatorType(context);
  }

  Widget _getWidgetByIndicatorType(BuildContext context) {
    switch (properties.indicatorType) {
      case ProgressType.center:
        return Center(
            child: CircularProgressIndicator(backgroundColor: properties.style?.color,)); 
      case ProgressType.inStack:
        return Positioned.fill(
          child: Container(
            color: properties.style?.inStackBackgroundColor ?? Theme.of(context).scaffoldBackgroundColor.withOpacity(0.25),
            child: Center(
              child: CircularProgressIndicator(backgroundColor: properties.style?.color),
            ),
          ),
        );
    }
  }
}
