import 'package:flutter/cupertino.dart';
import 'package:native_widgets/material_widgets/material_widgets.dart';
import '../models/action_sheet_model.dart';
import '../models/date_time_picker_model.dart';
import '../models/dialog_models.dart';
import '../models/indicator_model.dart';
import '../models/refresh_indicator_model.dart';
import '../models/switch_model.dart';
import 'cupertino_action_sheet/cupertino_action_sheet.dart';
import 'cupertino_date_time_picker/cupertino_date_time_picker.dart';
import 'cupertino_dialog/cupertino_dialog.dart';
import 'cupertino_indicator/cupertino_indicator.dart';
import 'cupertino_refresh_indicator/cupertino_refresh_indicator.dart';
import 'cupertino_switch/cupertino_switch.dart';

class CupertinoWidgets<T> extends MaterialWidgets{
  CupertinoWidgets(super.context, {super.switchTheme,super.indicatorTheme,super.buttonTheme,super.actionSheetTheme});

  
  Widget cupertinoSwitch(CustomSwitchModel constructors) {
    return CupertinoSwitchWidget(constructors: constructors,theme: switchTheme,);
  }

  Widget cupertinoIndicator(CustomIndicatorModel constructors) {
    return CupertinoIndicatorWidget(constructors: constructors,theme: indicatorTheme,);
  }

  Future<T> cupertinoDialog(DialogModel constructors) async {
    return await showCupertinoDialog(
      context: context,
      builder: (_) {
        return CupertinoDialog(constructors: constructors,theme:buttonTheme);
      },
    );
  }

  Future<T> cupertinoActionSheet(ActionSheetModel constructors) async {
    return await showCupertinoModalPopup(
      context: context,
      builder: (_) {
        return CupertinoActionSheetWidget(constructors: constructors);
      },
    );
  }
  
  Widget cupertinoRefreshIndicator(RefreshIndicatorModel constructors){
    return CupertinoRefreshIndicator(constructors: constructors);
  }

  Future<DateTime?> cupertinoDateTimePicker(DateTimePickerModel constructors) async {
     return await showCupertinoModalPopup<DateTime?>(
      context: context,
      builder: (_) {
        return CupertinoDatePickerWidget(constructors: constructors);
      },
    );
  }
}
