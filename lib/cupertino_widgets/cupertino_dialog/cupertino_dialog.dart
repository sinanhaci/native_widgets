import 'package:flutter/cupertino.dart';
import '../../enums/dialog_type.dart';
import '../../properties/dialog_properties.dart';
import '../../widgets/buttons.dart';

class CupertinoDialog extends StatelessWidget {
  final DialogProperties properties;
  const CupertinoDialog({super.key, required this.properties});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: _title(),
      content: _content(),
      actions: _actions(),
    );
  }

  Widget _title(){
    switch (properties.dialogType) {
      case DialogType.normal:
      case DialogType.input:
        return Text(
          properties.title,
          style: properties.theme.titleStyle,
        );
      case DialogType.custom:
        return properties.customDialogProperties?.title ?? const Center();
    }
  }

  List<Widget> _actions() {
    switch (properties.dialogType) {
      case DialogType.normal:
      case DialogType.input:
        if(properties.cancelButton == null){
          return [CupertinoDialogButton(button: properties.okButton,theme: properties.theme)];
        }else{
          return [
            CupertinoDialogButton(button: properties.cancelButton!,theme: properties.theme),
            CupertinoDialogButton(button: properties.okButton,theme: properties.theme)
          ];
        }
      case DialogType.custom:
        if(properties.customDialogProperties?.buttons == null){
          return [];
        }
        return <Widget>[properties.customDialogProperties!.buttons];
    }
  }

  Widget _content() {
    switch (properties.dialogType) {
      case DialogType.normal:
        return Text(properties.message,style: properties.theme.messageStyle);
      case DialogType.input:
        return Column(
          children: [
            Text(
              properties.message,
              style: properties.theme.messageStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            CupertinoTextField(
              enabled: properties.inputProperties?.enabled,
              autofocus: properties.inputProperties?.autoFocus ?? false,
              decoration: properties.inputProperties?.iosDecoration,
              placeholder: properties.inputProperties?.hintText,
              onChanged: properties.inputProperties?.onChanged,
              controller: properties.inputProperties?.controller,
              focusNode: properties.inputProperties?.focusNode,
              maxLines: properties.inputProperties?.maxLines,
              minLines: properties.inputProperties?.minLines,
              textInputAction: properties.inputProperties?.inputAction,
              keyboardType: properties.inputProperties?.keyboardType,
            )
          ],
        );
      case DialogType.custom:
        return properties.customDialogProperties?.body ?? const Center();
    }
  }
}
