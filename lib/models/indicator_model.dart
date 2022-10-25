import 'package:flutter/material.dart';
import '../enums/indicator_type.dart';



class IndicatorModel {
  Color? color;
  IndicatorType indicatorType;
  IndicatorModel({
    this.color,
    this.indicatorType = IndicatorType.center,
  });
}
