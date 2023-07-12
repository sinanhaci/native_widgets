import 'package:flutter/material.dart';
import '../properties/_export_properties.dart';

abstract class WidgetsManager<T> {
  Widget customSwitch(SwitchProperties properties);
  Widget customIndicator(ProgressIndicatorProperties properties);
  Future<T> customDialog(DialogProperties properties,BuildContext context);
  Future<T> customActionSheet(ActionSheetProperties properties,BuildContext context);
  Widget customRefreshIndicator(RefreshIndicatorProperties properties);
  Future<DateTime?> customDatePicker(DatePickerProperties properties,BuildContext context);

}