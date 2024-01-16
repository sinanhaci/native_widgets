// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../enums/date_time_picker_type.dart';

class DatePickerProperties {
  DateTime? minimumDate;
  DateTime? maximumDate;
  DateTime? initialDateTime;
  int? maximumYear;
  int? minimumYear;
  DatePickerDateOrder dateOrder;
  DateTime time;
  DateTimePickerType? pickerType;
  bool use24hFormat;
  String okButtonText;
  String? title;
  
  DatePickerProperties({
    this.minimumDate,
    this.maximumDate,
    this.initialDateTime,
    this.maximumYear,
    this.minimumYear,
    this.dateOrder = DatePickerDateOrder.dmy,
    required this.time,
    this.pickerType,
    this.use24hFormat = true,
    this.okButtonText = "Ok",
    this.title
  });
}

class DatePickerStyle {
///  Only ios background color.
  Color? backgroundColor;
  Color? titleBackgroundColor;
  Color? borderColor;

///  Only ios widget height.
  double height;
  TextStyle? titleStyle;
  ColorScheme? androidColorScheme;
  DatePickerStyle({
    this.backgroundColor,
    this.height = 300,
    this.titleStyle,
    this.androidColorScheme,
    this.titleBackgroundColor,
    this.borderColor
  });
  

  DatePickerStyle copyWith({
    Color? backgroundColor,
    double? height,
  }) {
    return DatePickerStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      height: height ?? this.height,
    );
  }
}
