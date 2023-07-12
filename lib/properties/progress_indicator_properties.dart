// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../enums/indicator_type.dart';

class ProgressIndicatorProperties {
  ProgressType indicatorType;
  double radius;
  ProgressIndicatorProperties({
    this.indicatorType = ProgressType.center,
    this.radius = 10
  });
}

class ProgressIndicatorStyle {
  Color? color;
  Color? inStackBackgroundColor;
  
  ProgressIndicatorStyle({
    this.color,
    this.inStackBackgroundColor,
  });

  ProgressIndicatorStyle copyWith({
    Color? color,
    Color? inStackBackgroundColor,
    double? radius,
  }) {
    return ProgressIndicatorStyle(
      color: color ?? this.color,
      inStackBackgroundColor: inStackBackgroundColor ?? this.inStackBackgroundColor,
    );
  }
}
