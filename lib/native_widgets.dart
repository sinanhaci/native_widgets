// ignore_for_file: public_member_api_docs, sort_constructors_first
library native_widgets;

import 'dart:io';
import 'package:flutter/material.dart';
import 'cupertino_widgets/cupertino_widgets.dart';
import 'models/action_sheet_model.dart';
import 'models/date_time_picker_model.dart';
import 'models/dialog_models.dart';
import 'models/indicator_model.dart';
import 'models/refresh_indicator_model.dart';
import 'models/switch_model.dart';

class NativeWidgets<T> extends CupertinoWidgets{
  NativeWidgets(super.context);



  

  Widget nativeSwitch({required SwitchModel constructors}) {
    switch (Platform.isIOS) {
      case false:
        return cupertinoSwitch(constructors);
      default:
        return materialSwitch(constructors);
    }
  }

  Widget nativeIndicator({required IndicatorModel constructors}) {
    switch (Platform.isIOS) {
      case false:
        return cupertinoIndicator(constructors);
      default:
        return materialIndicator(constructors);
    }
  }

  Future<T> nativeDialog({required DialogModel constructors}) async {
    switch (Platform.isIOS) {
      case false:
        return await cupertinoDialog(constructors);
      default:
        return await materialDialog(constructors);
    }
  }

  Future<T> nativeActionSheet({required ActionSheetModel constructors}) async {
    switch (Platform.isIOS) {
      case false:
        return await cupertinoActionSheet(constructors);
      default:
        return await materialActionSheet(constructors);
    }
  }

  Widget nativeRefreshIndicator({required RefreshIndicatorModel constructors}) {
    switch (Platform.isIOS) {
      case false:
        return cupertinoRefreshIndicator(constructors);
      default:
        return materialRefreshIndicator(constructors);
    }
  }

  Future<DateTime?> nativeDateTimePicker(
      {required DateTimePickerModel constructors}) async {
    switch (Platform.isIOS) {
      case false:
        return await cupertinoDateTimePicker(constructors);
      default:
        return await materialDateTimePickerWidget(constructors);
    }
  }
}
