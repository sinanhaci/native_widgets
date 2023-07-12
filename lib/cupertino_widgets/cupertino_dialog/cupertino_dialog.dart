import '../export.dart';


class CupertinoDialog extends StatelessWidget {
  final DialogProperties properties;
  final DialogStyle? style;
  const CupertinoDialog({super.key, required this.properties,this.style});

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
          style: style?.titleStyle,
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
          return [CupertinoDialogButton(button: properties.okButton,theme: style)];
        }else{
          return [
            CupertinoDialogButton(button: properties.cancelButton!,theme: style),
            CupertinoDialogButton(button: properties.okButton,theme: style)
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
        return Text(properties.message,style: style?.messageStyle);
      case DialogType.input:
        return Column(
          children: [
            Text(
              properties.message,
              style: style?.messageStyle,
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
