import 'package:flutter/material.dart';
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
        useMaterial3: true,
      ),
      home: const AdaptiveWidgets(),
    );
  }
}

class AdaptiveWidgets extends StatelessWidget {
  const AdaptiveWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final NativeWidgets nativeWidgets = NativeWidgets(context,actionSheetStyle: ActionSheetStyle(),datePickerStyle: DatePickerStyle(),dialogStyle: DialogStyle(),progressIndicatorStyle: ProgressIndicatorStyle(),switchStyle: SwitchStyle());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive Widgets'),
        centerTitle: true,
      ),
      body: nativeWidgets.adaptiverefreshIndicator(
        properties: RefreshIndicatorProperties(
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
                nativeWidgets.adaptiveDialog(
                  properties: DialogProperties(
                    dialogType: DialogType.normal,
                    title: 'Title',
                    message: 'Content',
                    okButton: DialogButtonProperties(
                      text: 'OK',
                      onPress: () => Navigator.pop(context),
                    ),
                  ),
                );
              },
            ),
            _button(
              title: 'Ok Cancel Dialog',
              onTap: () {
                nativeWidgets.adaptiveDialog(
                  properties: DialogProperties(
                    dialogType: DialogType.normal,
                    title: 'Title',
                    message: 'Content',
                    okButton: DialogButtonProperties(
                      text: 'Ok',
                      onPress: () => Navigator.pop(context),
                    ),
                    cancelButton: DialogButtonProperties(
                      text: 'Cancel',
                      onPress: () => Navigator.pop(context),
                    ),
                  ),
                );
              },
            ),
            _button(
              title: 'Ok Input Dialog',
              onTap: () {
                nativeWidgets.adaptiveDialog(
                  properties: DialogProperties(
                    dialogType: DialogType.input,
                    title: 'Title',
                    message: 'Content',
                    okButton: DialogButtonProperties(
                      text: 'OK',
                      onPress: () => Navigator.pop(context),
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
                nativeWidgets.adaptiveDialog(
                  properties: DialogProperties(
                    dialogType: DialogType.input,
                    title: 'Title',
                    message: 'Content',
                    okButton: DialogButtonProperties(
                      text: 'Ok',
                      onPress: () => Navigator.pop(context),
                    ),
                    cancelButton: DialogButtonProperties(
                      text: 'Cancel',
                      onPress: () => Navigator.pop(context),
                    ),
                    inputProperties: DialogInputProperties(
                      onChanged: (value){}
                    )
                  ),
                );
              },
            ),
            nativeWidgets.adaptiveSwitch(
              properties: SwitchProperties(
                value: true,
                onChanged: (value){}
              )
            ),
            nativeWidgets.adaptiveIndicator(
              properties: ProgressIndicatorProperties()
            ),
           _button(
              title: 'Date Time Picker',
              onTap: () {
                nativeWidgets.adaptiveDatePicker(
                  properties: DatePickerProperties(
                    pickerType: DateTimePickerType.dateAndTime,
                    time: DateTime.now()
                  ),
                );
              },
            ),
           _button(
              title: 'Date Picker',
              onTap: () {
                nativeWidgets.adaptiveDatePicker(
                  properties: DatePickerProperties(
                    pickerType: DateTimePickerType.date,
                    time: DateTime.now()
                  ),
                );
              },
            ),
           _button(
              title: 'Time Picker',
              onTap: () {
                nativeWidgets.adaptiveDatePicker(
                  properties: DatePickerProperties(
                    pickerType: DateTimePickerType.time,
                    time: DateTime.now()
                  ),
                );
              },
            ),
           _button(
              title: 'Action Sheet',
              onTap: () {
                nativeWidgets.adaptiveActionSheet(
                  properties: ActionSheetProperties(
                    title: 'Title',
                    content: 'Content',
                    actions: [
                      ActionButton(
                        text: 'First Action',
                        onPress: (){},
                        icon: Icons.add,
                        isDestructiveAction: true
                      ),
                      ActionButton(
                        text: 'Second Action',
                        onPress: (){},
                        icon: Icons.add,
                        isDefaultAction: true
                      ),
                      ActionButton(
                        text: 'Second Action',
                        onPress: (){},
                        icon: Icons.add,
                      ),
                      ActionButton(
                        text: 'Second Action',
                        onPress: (){},
                        icon: Icons.add
                      ),
                      ActionButton(
                        text: 'Second Action',
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


