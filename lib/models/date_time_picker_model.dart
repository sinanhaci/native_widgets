import 'package:flutter/cupertino.dart';
import '../enums/date_time_picker_type.dart';

class DateTimePickerModel {
  DateTime? minimumDate;
  DateTime? maximumDate;
  DateTime? initialDateTime;
  int? maximumYear;
  int? minimumYear;
  DatePickerDateOrder? dateOrder;
  DateTime time;
  DateTimePickerType? pickerType;
  DateTimePickerModel(
      {this.minimumDate,
      this.maximumDate,
      this.initialDateTime,
      this.maximumYear,
      this.minimumYear,
      this.dateOrder,
      required this.time,
      this.pickerType});
}