// ignore_for_file: public_member_api_docs, sort_properties_first
library native_widgets;

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:native_widgets/cupertino_widgets/cupertino_widgets.dart';
import 'package:native_widgets/material_widgets/material_widgets.dart';
import 'manager/widgets_manager.dart';
import 'properties/action_sheet_properties.dart';
import 'properties/date_picker_properties.dart';
import 'properties/dialog_properties.dart';
import 'properties/progress_indicator_properties.dart';
import 'properties/refresh_indicator_model.dart';
import 'properties/switch_properties.dart';
export 'properties/action_sheet_properties.dart';
export 'properties/date_picker_properties.dart';
export 'properties/dialog_properties.dart';
export 'properties/progress_indicator_properties.dart';
export 'properties/refresh_indicator_model.dart';
export 'properties/switch_properties.dart';
export 'enums/date_time_picker_type.dart';
export 'enums/dialog_type.dart';
export 'enums/indicator_type.dart';


class NativeWidgets<T> {
  final BuildContext _context;
  NativeWidgets(this._context);

  final CupertinoWidgets _cupertinoWidgets = CupertinoWidgets();
  final MaterialWidgets _materialWidgets = MaterialWidgets();

  Widget adaptiveSwitch({required SwitchProperties properties}) {
    switch (Platform.isIOS) {
      case true:
        return _cupertinoWidgets.customSwitch(properties);
      default:
        return _materialWidgets.customSwitch(properties);
    }
  }

  Widget adaptiveIndicator({required ProgressIndicatorProperties properties}) {
    switch (Platform.isIOS) {
      case true:
        return _cupertinoWidgets.customIndicator(properties);
      default:
        return _cupertinoWidgets.customIndicator(properties);
    }
  }

  Future<T> adaptiveDialog({required DialogProperties properties}) async {
    switch (Platform.isIOS) {
      case true:
        return await _cupertinoWidgets.customDialog(properties,_context);
      default:
        return await _cupertinoWidgets.customDialog(properties,_context);
    }
  }

  Future<T> adaptiveActionSheet({required ActionSheetProperties properties}) async {
    switch (Platform.isIOS) {
      case true:
        return await _cupertinoWidgets.customActionSheet(properties,_context);
      default:
        return await _cupertinoWidgets.customActionSheet(properties,_context);
    }
  }

  Widget adaptiverefreshIndicator({required RefreshIndicatorProperties properties}) {
    switch (Platform.isIOS) {
      case true:
        return _cupertinoWidgets.customRefreshIndicator(properties);
      default:
        return _cupertinoWidgets.customRefreshIndicator(properties);
    }
  }

  Future<DateTime?> adaptiveDatePicker({required DatePickerProperties properties}) async {
    switch (Platform.isIOS) {
      case true:
        return await _cupertinoWidgets.customDatePicker(properties,_context);
      default:
        return await _cupertinoWidgets.customDatePicker(properties,_context);
    }
  }
}


