// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

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
    this.okButtonText = "Ok"
  });
}

class DatePickerStyle {
///  Only ios background color.
  Color? backgroundColor;
///  Only ios widget height.
  double height;
  DatePickerStyle({
    this.backgroundColor,
    this.height = 250
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
