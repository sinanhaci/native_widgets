// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/action_sheet_model.dart';
import '../models/button_properties_model.dart';
import '../models/date_time_picker_model.dart';
import '../models/dialog_models.dart';
import '../models/indicator_model.dart';
import '../models/refresh_indicator_model.dart';
import '../models/switch_model.dart';
import 'material_action_sheet/material_action_sheet.dart';
import 'material_date_time_picker/material_date_time_picker.dart';
import 'material_dialog/material_dialog.dart';
import 'material_indicator/material_indicator.dart';
import 'material_refresh_indicator/material_refresh_indicator.dart';
import 'material_switch/material_switch.dart';

class MaterialWidgets<T> {
  BuildContext context;
  CustomSwitchTheme? switchTheme;
  CustomIndicatorTheme? indicatorTheme;
  CustomButtonTheme? buttonTheme;
  CustomActionSheetTheme? actionSheetTheme;
  MaterialWidgets(this.context,{this.switchTheme,this.indicatorTheme,this.buttonTheme,this.actionSheetTheme});


  Widget materialSwitch(CustomSwitchModel constructors) {
    return MaterialSwitchWidget(constructors: constructors);
  }

  Widget materialIndicator(CustomIndicatorModel constructors) {
    return MaterialIndicatorWidget(constructors: constructors,theme: indicatorTheme);
  }

  Future<T> materialDialog(DialogModel constructors) async {
    return await showDialog(
      context: context,
      builder: (_) {
        return MaterialDialog(constructors: constructors,theme: buttonTheme);
      },
    );
  }

  Future<T> materialActionSheet(ActionSheetModel constructors) async {
    return await showModalBottomSheet(
      context: context,
      builder: (_) {
        return MaterialActionSheet(constructors: constructors,theme: actionSheetTheme,);
      },
    );
  }

  Widget materialRefreshIndicator(RefreshIndicatorModel constructors) {
    return MaterialRefreshIndicator(constructors: constructors);
  }

  Future<DateTime?> materialDateTimePickerWidget(DateTimePickerModel constructors) async {
    var dateTimePicker = MaterialDateTimePickerWidget(
        constructors: constructors, context: context);
    return await dateTimePicker.materialDateTimePickerWidget();
  }
}
