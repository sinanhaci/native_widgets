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
  Widget customSwitch(SwitchProperties properties,SwitchStyle style) {
    return MaterialSwitchWidget(properties: properties,style: style);
  }

  @override
  Widget customIndicator(ProgressIndicatorProperties properties,ProgressIndicatorStyle style) {
    return MaterialIndicatorWidget(properties: properties,style: style);
  }

  @override
  Future<T> customDialog(DialogProperties properties,BuildContext context,DialogStyle style) async {
    return await showDialog(
      context: context,
      builder: (_) {
        return MaterialDialog(properties: properties,style: style);
      },
    );
  }

  @override
  Future<T> customActionSheet(ActionSheetProperties properties,BuildContext context,ActionSheetStyle style) async {
    return await showModalBottomSheet(
      context: context,
      builder: (_) {
        return MaterialActionSheet(properties: properties,style: style);
      },
    );
  }

  @override
  Widget customRefreshIndicator(RefreshIndicatorProperties properties) {
    return MaterialRefreshIndicator(properties: properties);
  }

  @override
  Future<DateTime?> customDatePicker(DatePickerProperties properties,BuildContext context,DatePickerStyle style) async {
    var dateTimePicker = MaterialDateTimePickerWidget(properties: properties, context: context);
    return await dateTimePicker.materialDateTimePickerWidget();
  }
}
