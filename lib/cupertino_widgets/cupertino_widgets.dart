import 'package:flutter/cupertino.dart';
import 'package:native_widgets/manager/widgets_manager.dart';
import '../properties/_export_properties.dart';
import 'cupertino_action_sheet/cupertino_action_sheet.dart';
import 'cupertino_date_time_picker/cupertino_date_time_picker.dart';
import 'cupertino_dialog/cupertino_dialog.dart';
import 'cupertino_indicator/cupertino_indicator.dart';
import 'cupertino_refresh_indicator/cupertino_refresh_indicator.dart';
import 'cupertino_switch/cupertino_switch.dart';

class CupertinoWidgets<T> extends WidgetsManager {

  @override
  Widget customSwitch(SwitchProperties properties,SwitchStyle style) {
    return CupertinoSwitchWidget(properties: properties, style: style);
  }
  @override
  Widget customIndicator(ProgressIndicatorProperties properties,ProgressIndicatorStyle style) {
    return CupertinoIndicatorWidget(properties: properties,style: style);
  }

  @override
  Future<T> customDialog(DialogProperties properties,BuildContext context,DialogStyle style) async {
    return await showCupertinoDialog(
      context: context,
      builder: (_) {
        return CupertinoDialog(properties: properties,style: style);
      },
    );
  }

  @override
  Future<T> customActionSheet(ActionSheetProperties properties,BuildContext context,ActionSheetStyle style) async {
    return await showCupertinoModalPopup(
      context: context,
      builder: (_) {
        return CupertinoActionSheetWidget(properties: properties,style: style);
      },
    );
  }

  @override
  Widget customRefreshIndicator(RefreshIndicatorProperties properties){
    return CupertinoRefreshIndicator(properties: properties);
  }

  @override
  Future<DateTime?> customDatePicker(DatePickerProperties properties,BuildContext context,DatePickerStyle style) async {
     return await showCupertinoModalPopup<DateTime?>(
      context: context,
      builder: (_) {
        return CupertinoDatePickerWidget(properties: properties,style: style);
      },
    );
  }
}
