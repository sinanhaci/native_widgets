import 'package:flutter/cupertino.dart';
import '../../enums/indicator_type.dart';
import '../../properties/progress_indicator_properties.dart';

class CupertinoIndicatorWidget extends StatelessWidget {
  final ProgressIndicatorProperties properties;
  const CupertinoIndicatorWidget({super.key, required this.properties});

  @override
  Widget build(BuildContext context) {
    return _getWidgetByIndicatorType(context);
  }

  Widget _getWidgetByIndicatorType(BuildContext context) {
    switch (properties.indicatorType) {
      case ProgressType.center:
        return Center(child: CupertinoActivityIndicator(color: properties.style?.color,radius: properties.style?.radius ?? 10));
      case ProgressType.inStack:
        return Positioned.fill(
          child: Container(
            color: properties.style?.inStackBackgroundColor ??  CupertinoTheme.of(context).scaffoldBackgroundColor.withOpacity(0.25),
            child: Center(
              child: CupertinoActivityIndicator(color: properties.style?.color,radius: properties.style?.radius ?? 10),
            ),
          ),
        );
    }
  }
}
