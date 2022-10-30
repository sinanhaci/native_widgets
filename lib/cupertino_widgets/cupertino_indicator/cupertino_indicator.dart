import 'package:flutter/cupertino.dart';

import '../../enums/indicator_type.dart';
import '../../models/indicator_model.dart';

class CupertinoIndicatorWidget extends StatelessWidget {
  final IndicatorModel constructors;
  const CupertinoIndicatorWidget({super.key, required this.constructors});

  @override
  Widget build(BuildContext context) {
    return _getWidgetByIndicatorType();
  }

  Widget _getWidgetByIndicatorType() {
    switch (constructors.indicatorType) {
      case IndicatorType.center:
        return Center(
            child: CupertinoActivityIndicator(color: constructors.color));
      case IndicatorType.inStack:
        return Positioned.fill(
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.25),
            child: Center(
              child: CupertinoActivityIndicator(color: constructors.color),
            ),
          ),
        );
    }
  }
}
