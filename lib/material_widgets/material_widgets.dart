// ignore_for_file: public_member_api_docs, sort_properties_first
import 'package:flutter/material.dart';
import '../manager/widgets_manager.dart';
import '../properties/_export_properties.dart';
import 'material_action_sheet/material_action_sheet.dart';
import 'material_date_time_picker/material_date_time_picker.dart';
import 'material_dialog/material_dialog.dart';
import 'material_indicator/material_indicator.dart';
import 'material_refresh_indicator/material_refresh_indicator.dart';
import 'material_switch/material_switch.dart';

class MaterialWidgets<T> extends WidgetsManager{

  @override
  Widget customSwitch(SwitchProperties properties) {
    return MaterialSwitchWidget(properties: properties);
  }

  @override
  Widget customIndicator(ProgressIndicatorProperties properties) {
    return MaterialIndicatorWidget(properties: properties);
  }

  @override
  Future<T> customDialog(DialogProperties properties,BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (_) {
        return MaterialDialog(properties: properties);
      },
    );
  }

  @override
  Future<T> customActionSheet(ActionSheetProperties properties,BuildContext context) async {
    return await showModalBottomSheet(
      context: context,
      builder: (_) {
        return MaterialActionSheet(properties: properties);
      },
    );
  }

  @override
  Widget customRefreshIndicator(RefreshIndicatorProperties properties) {
    return MaterialRefreshIndicator(properties: properties);
  }

  @override
  Future<DateTime?> customDatePicker(DatePickerProperties properties,BuildContext context) async {
    var dateTimePicker = MaterialDateTimePickerWidget(properties: properties, context: context);
    return await dateTimePicker.materialDateTimePickerWidget();
  }
}
