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
  DateTimeStyle? style;
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
    this.style,
    this.use24hFormat = true,
    this.okButtonText = "Ok"
  });
}

class DateTimeStyle {
///  Only ios background color.
  Color? backgroundColor;
///  Only ios widget height.
  double height;
  DateTimeStyle({
    this.backgroundColor,
    this.height = 250
  });
  
}
