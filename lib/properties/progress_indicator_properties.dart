import 'package:flutter/material.dart';
import '../enums/indicator_type.dart';

class ProgressIndicatorProperties {
  ProgressType indicatorType;
  ProgressIndicatorStyle? style;
  ProgressIndicatorProperties({
    this.indicatorType = ProgressType.center,
    this.style
  });
}

class ProgressIndicatorStyle {
  Color? color;
  Color? inStackBackgroundColor;
  double? radius;
  ProgressIndicatorStyle({
    this.color,
    this.inStackBackgroundColor,
    this.radius
  });
}
