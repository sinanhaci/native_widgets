import 'package:flutter/material.dart';
import '../properties/_export_properties.dart';

abstract class WidgetsManager<T> {
  Widget customSwitch(SwitchProperties properties,SwitchStyle style);
  Widget customIndicator(ProgressIndicatorProperties properties,ProgressIndicatorStyle style);
  Future<T> customDialog(DialogProperties properties,BuildContext context,DialogStyle style);
  Future<T> customActionSheet(ActionSheetProperties properties,BuildContext context,ActionSheetStyle style);
  Future<DateTime?> customDatePicker(DatePickerProperties properties,BuildContext context,DatePickerStyle style);
  Widget customRefreshIndicator(RefreshIndicatorProperties properties);
  

}