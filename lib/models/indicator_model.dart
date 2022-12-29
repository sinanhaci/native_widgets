// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../enums/indicator_type.dart';

class CustomIndicatorModel {
  IndicatorType indicatorType;
  CustomIndicatorModel({
    this.indicatorType = IndicatorType.center,
  });
}

class CustomIndicatorTheme {
  Color? color;
  Color? inStackBackgroundColor;
  CustomIndicatorTheme({
    this.color,
    this.inStackBackgroundColor
  });
}
