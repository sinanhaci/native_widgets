// ignore_for_file: public_member_api_docs, sort_properties_first
library native_widgets;

import 'package:flutter/material.dart';
import 'export.dart';
export 'export.dart';



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


