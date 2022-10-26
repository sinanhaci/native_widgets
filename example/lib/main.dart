import 'package:flutter/material.dart';
import 'package:native_widgets/enums/date_time_picker_type.dart';
import 'package:native_widgets/enums/dialog_type.dart';
import 'package:native_widgets/models/action_sheet_model.dart';
import 'package:native_widgets/models/button_properties_model.dart';
import 'package:native_widgets/models/date_time_picker_model.dart';
import 'package:native_widgets/models/dialog_models.dart';
import 'package:native_widgets/models/indicator_model.dart';
import 'package:native_widgets/models/refresh_indicator_model.dart';
import 'package:native_widgets/models/switch_model.dart';
import 'package:native_widgets/native_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adaptive Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AdaptiveWidgets(),
    );
  }
}

class AdaptiveWidgets extends StatelessWidget {
  const AdaptiveWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final NativeWidgets nativeWidgets = NativeWidgets(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive Widgets'),
        centerTitle: true,
      ),
      body: nativeWidgets.nativeRefreshIndicator(
        constructors: RefreshIndicatorModel(
          onRefresh: ()async{
            await Future.delayed(const Duration(seconds: 2));
          },
          children: [
            const SizedBox(
              height: 50,
            ),
            _button(
              title: 'Ok Dialog',
              onTap: () {
                nativeWidgets.nativeDialog(
                  constructors: DialogModel(
                    dialogType: DialogType.ok,
                    title: 'Title',
                    content: 'Content',
                    okButtonProperties: ButtonProperties(
                      buttonText: 'OK',
                      onPress: () => Navigator.pop(context),
                      isDefaultAction: true
                    ),
                  ),
                );
              },
            ),
            _button(
              title: 'Ok Cancel Dialog',
              onTap: () {
                nativeWidgets.nativeDialog(
                  constructors: DialogModel(
                    dialogType: DialogType.okCancel,
                    title: 'Title',
                    content: 'Content',
                    okButtonProperties: ButtonProperties(
                      buttonText: 'Cancel',
                      onPress: () => Navigator.pop(context),
                      isDestructiveAction: true
                    ),
                    cancelButtonProperties: ButtonProperties(
                      buttonText: 'Ok',
                      onPress: () => Navigator.pop(context),
                      isDefaultAction: true
                    ),
                  ),
                );
              },
            ),
            _button(
              title: 'Ok Input Dialog',
              onTap: () {
                nativeWidgets.nativeDialog(
                  constructors: DialogModel(
                    dialogType: DialogType.inputOk,
                    title: 'Title',
                    content: 'Content',
                    okButtonProperties: ButtonProperties(
                      buttonText: 'OK',
                      onPress: () => Navigator.pop(context),
                      isDefaultAction: true
                    ),
                    inputProperties: DialogInputProperties(
                      onChanged: (value){}
                    )
                  ),
                );
              },
            ),
            _button(
              title: 'Ok Cancel Input Dialog',
              onTap: () {
                nativeWidgets.nativeDialog(
                  constructors: DialogModel(
                    dialogType: DialogType.inputOkCancel,
                    title: 'Title',
                    content: 'Content',
                    okButtonProperties: ButtonProperties(
                      buttonText: 'Cancel',
                      onPress: () => Navigator.pop(context),
                      isDestructiveAction: true
                    ),
                    cancelButtonProperties: ButtonProperties(
                      buttonText: 'Ok',
                      onPress: () => Navigator.pop(context),
                      isDefaultAction: true
                    ),
                    inputProperties: DialogInputProperties(
                      onChanged: (value){}
                    )
                  ),
                );
              },
            ),
            nativeWidgets.nativeSwitch(
              constructors: SwitchModel(
                activeColor: Colors.blue,
                value: true,
                onChanged: (value){}
              )
            ),
            nativeWidgets.nativeIndicator(
              constructors: IndicatorModel()
            ),
           _button(
              title: 'Date Time Picker',
              onTap: () {
                nativeWidgets.nativeDateTimePicker(
                  constructors: DateTimePickerModel(
                    pickerType: DateTimePickerType.dateAndTime,
                    time: DateTime.now()
                  ),
                );
              },
            ),
           _button(
              title: 'Date Picker',
              onTap: () {
                nativeWidgets.nativeDateTimePicker(
                  constructors: DateTimePickerModel(
                    pickerType: DateTimePickerType.date,
                    time: DateTime.now()
                  ),
                );
              },
            ),
           _button(
              title: 'Time Picker',
              onTap: () {
                nativeWidgets.nativeDateTimePicker(
                  constructors: DateTimePickerModel(
                    pickerType: DateTimePickerType.time,
                    time: DateTime.now()
                  ),
                );
              },
            ),
           _button(
              title: 'Action Sheet',
              onTap: () {
                nativeWidgets.nativeActionSheet(
                  constructors: ActionSheetModel(
                    actions: [
                      ButtonProperties(
                        buttonText: 'First Action',
                        onPress: (){},
                        icon: Icons.add
                      ),
                      ButtonProperties(
                        buttonText: 'Second Action',
                        onPress: (){},
                        icon: Icons.add
                      ),
                    ]
                  ),
                );
              },
            ),
           _button(
              title: 'Action Sheet Title and Content',
              onTap: () {
                nativeWidgets.nativeActionSheet(
                  constructors: ActionSheetModel(
                    title: 'Title',
                    content: 'Content',
                    actions: [
                      ButtonProperties(
                        buttonText: 'First Action',
                        onPress: (){},
                        icon: Icons.add
                      ),
                      ButtonProperties(
                        buttonText: 'Second Action',
                        onPress: (){},
                        icon: Icons.add
                      ),
                    ]
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _button({required String title, required Function onTap,}) {
    return Padding(
      padding: const EdgeInsets.only(left: 50,right: 50),
      child: MaterialButton(
        onPressed: () => onTap(),
        color: Colors.blue,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
