import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../enums/date_time_picker_type.dart';
import '../../models/date_time_picker_model.dart';

class MaterialDateTimePickerWidget {
  final DateTimePickerModel constructors;
  final BuildContext context;
  MaterialDateTimePickerWidget({
    required this.constructors,
    required this.context
  });


  Future<DateTime?> materialDateTimePickerWidget() async {
    switch (constructors.pickerType) {
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
      initialDate: constructors.initialDateTime ?? time,
      firstDate: constructors.minimumDate ?? DateTime.parse(Constants.minimumDateTimeString),
      lastDate: constructors.maximumDate ?? DateTime.parse(Constants.maximumDateTimeString),
      initialDatePickerMode: DatePickerMode.day,
    );
    if(result != null) constructors.time = result;
    return result != null ? await _materialTimePicker() : null;

  }

  Future<DateTime?> _materialDatePicker()async{
    var result = await showDatePicker(
      builder: ((context, child) {
        return child!;
      }),
      context: context,
      initialDate: constructors.initialDateTime ?? DateTime.now(),
      firstDate: constructors.minimumDate ?? DateTime.parse(Constants.minimumDateTimeString),
      lastDate: constructors.maximumDate ?? DateTime.parse(Constants.maximumDateTimeString),
      initialDatePickerMode: DatePickerMode.day,
    );
    if(result != null) constructors.time = result;
    return result;
  }

  Future<DateTime?> _materialTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: constructors.time.hour, minute: constructors.time.minute),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          alwaysUse24HourFormat: true,
        ),
        child: child!,
      ),
    );
    if(result != null) constructors.time = DateTime(constructors.time.year, constructors.time.month, constructors.time.day, result.hour, result.minute);
    return result == null ? null : constructors.time;
  }
}


