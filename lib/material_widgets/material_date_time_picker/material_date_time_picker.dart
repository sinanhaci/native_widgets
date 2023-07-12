import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../enums/date_time_picker_type.dart';
import '../../properties/date_picker_properties.dart';

class MaterialDateTimePickerWidget {
  final DatePickerProperties properties;
  final BuildContext context;
  MaterialDateTimePickerWidget({
    required this.properties,
    required this.context
  });


  Future<DateTime?> materialDateTimePickerWidget() async {
    switch (properties.pickerType) {
      case DateTimePickerType.date:
        return await _materialDatePicker();
      case DateTimePickerType.time:
        return await _materialTimePicker();
      case DateTimePickerType.dateAndTime:
      default:
        return await _materialDateAndTimePicker();
    }
  }


  Future<DateTime?> _materialDateAndTimePicker()async{
    DateTime? time = DateTime.now();
    var result = await showDatePicker(
      builder: ((context, child) {
        return child!;
      }),
      context: context,
      initialDate: properties.initialDateTime ?? time,
      firstDate: properties.minimumDate ?? DateTime.parse(Constants.minimumDateTimeString),
      lastDate: properties.maximumDate ?? DateTime.parse(Constants.maximumDateTimeString),
      initialDatePickerMode: DatePickerMode.day,
    );
    if(result != null) properties.time = result;
    return result != null ? await _materialTimePicker() : null;

  }

  Future<DateTime?> _materialDatePicker()async{
    var result = await showDatePicker(
      builder: ((context, child) {
        return child!;
      }),
      context: context,
      initialDate: properties.initialDateTime ?? DateTime.now(),
      firstDate: properties.minimumDate ?? DateTime.parse(Constants.minimumDateTimeString),
      lastDate: properties.maximumDate ?? DateTime.parse(Constants.maximumDateTimeString),
      initialDatePickerMode: DatePickerMode.day,
    );
    if(result != null) properties.time = result;
    return result;
  }

  Future<DateTime?> _materialTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: properties.time.hour, minute: properties.time.minute),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          alwaysUse24HourFormat: true,
        ),
        child: child!,
      ),
    );
    if(result != null) properties.time = DateTime(properties.time.year, properties.time.month, properties.time.day, result.hour, result.minute);
    return result == null ? null : properties.time;
  }
}


