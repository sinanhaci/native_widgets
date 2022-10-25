import 'package:flutter/cupertino.dart';

enum DateTimePickerType {
  date,
  time,
  dateAndTime;

  static getPlatformMode(DateTimePickerType? data) {
    switch (data) {
      case DateTimePickerType.date:
        return CupertinoDatePickerMode.date;
      case DateTimePickerType.time:
        return CupertinoDatePickerMode.time;
      case DateTimePickerType.dateAndTime:
      default:
        return CupertinoDatePickerMode.dateAndTime;
    }
  }
}