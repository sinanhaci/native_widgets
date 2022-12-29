import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../enums/indicator_type.dart';
import '../../models/indicator_model.dart';

class CupertinoIndicatorWidget extends StatelessWidget {
  final CustomIndicatorModel constructors;
  final CustomIndicatorTheme? theme;
  const CupertinoIndicatorWidget({super.key, required this.constructors,this.theme});

  @override
  Widget build(BuildContext context) {
    return _getWidgetByIndicatorType(context);
  }

  Widget _getWidgetByIndicatorType(BuildContext context) {
    switch (constructors.indicatorType) {
      case IndicatorType.center:
        return Center(
            child: CupertinoActivityIndicator(color: theme?.color));
      case IndicatorType.inStack:
        return Positioned.fill(
          child: Container(
            color: theme?.inStackBackgroundColor ??  Theme.of(context).scaffoldBackgroundColor.withOpacity(0.25),
            child: Center(
              child: CupertinoActivityIndicator(color: theme?.color),
            ),
          ),
        );
    }
  }
}
