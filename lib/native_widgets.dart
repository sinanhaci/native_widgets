// ignore_for_file: public_member_api_docs, sort_properties_first
library native_widgets;

import 'package:flutter/material.dart';
import 'export.dart';
export 'export.dart';





class NativeWidgets<T> {
  final BuildContext _context;
  NativeWidgets(this._context,{required this.progressIndicatorStyle,required this.switchStyle,required this.dialogStyle,required this.datePickerStyle,required this.actionSheetStyle});

  SwitchStyle switchStyle;
  ProgressIndicatorStyle progressIndicatorStyle;
  DialogStyle dialogStyle;
  ActionSheetStyle actionSheetStyle;
  DatePickerStyle datePickerStyle;



  final CupertinoWidgets _cupertinoWidgets = CupertinoWidgets();
  final MaterialWidgets _materialWidgets = MaterialWidgets();

  Widget adaptiveSwitch({required SwitchProperties properties,SwitchStyle? switchStyle}) {
    switch (Platform.isIOS) {
      case true:
        return _cupertinoWidgets.customSwitch(properties,switchStyle ?? this.switchStyle);
      default:
        return _materialWidgets.customSwitch(properties,switchStyle ?? this.switchStyle);
    }
  }

  Widget adaptiveIndicator({required ProgressIndicatorProperties properties,ProgressIndicatorStyle? progressIndicatorStyle}) {
    switch (Platform.isIOS) {
      case true:
        return _cupertinoWidgets.customIndicator(properties,progressIndicatorStyle ?? this.progressIndicatorStyle);
      default:
        return _materialWidgets.customIndicator(properties,progressIndicatorStyle ?? this.progressIndicatorStyle);
    }
  }

  Future<T> adaptiveDialog({required DialogProperties properties,DialogStyle? dialogStyle}) async {
    switch (Platform.isIOS) {
      case true:
        return await _cupertinoWidgets.customDialog(properties,_context,dialogStyle ?? this.dialogStyle);
      default:
        return await _materialWidgets.customDialog(properties,_context,dialogStyle ?? this.dialogStyle);
    }
  }

  Future<T> adaptiveActionSheet({required ActionSheetProperties properties,ActionSheetStyle? actionSheetStyle}) async {
    switch (Platform.isIOS) {
      case true:
        return await _cupertinoWidgets.customActionSheet(properties,_context,actionSheetStyle ?? this.actionSheetStyle);
      default:
        return await _materialWidgets.customActionSheet(properties,_context,actionSheetStyle ?? this.actionSheetStyle);
    }
  }

  Future<DateTime?> adaptiveDatePicker({required DatePickerProperties properties,DatePickerStyle? datePickerStyle}) async {
    switch (Platform.isIOS) {
      case true:
        return await _cupertinoWidgets.customDatePicker(properties,_context,datePickerStyle ?? this.datePickerStyle);
      default:
        return await _materialWidgets.customDatePicker(properties,_context,datePickerStyle ?? this.datePickerStyle);
    }
  }

  Widget adaptiverefreshIndicator({required RefreshIndicatorProperties properties}) {
    switch (Platform.isIOS) {
      case true:
        return _cupertinoWidgets.customRefreshIndicator(properties);
      default:
        return _materialWidgets.customRefreshIndicator(properties);
    }
  }
}


