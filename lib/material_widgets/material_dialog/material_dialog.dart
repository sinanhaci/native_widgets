import 'package:flutter/material.dart';
import '../../enums/dialog_type.dart';
import '../../properties/dialog_properties.dart';
import '../../widgets/buttons.dart';

class MaterialDialog extends StatelessWidget {
  final DialogProperties properties;
  final DialogStyle? style;
  const MaterialDialog({super.key, required this.properties,this.style});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        actionsAlignment: MainAxisAlignment.end,
        title: _title(),
        content: _content(),
        actions: _actions());
  }

  Widget? _title() {
    switch (properties.dialogType) {
      case DialogType.normal:
      case DialogType.input:
        if(properties.title == null || (properties.title?.isEmpty ?? true)){
          return null;
        }else{
          return Text(
            properties.title ?? "",
            style: style?.titleStyle,
          );
        }
      case DialogType.custom:
        return properties.customDialogProperties?.title ?? const Center();
    }
  }

  List<Widget> _actions() {
    switch (properties.dialogType) {
      case DialogType.normal:
      case DialogType.input:
        if (properties.cancelButton == null) {
          return [
            MaterialDialogButton(
                button: properties.okButton, theme: style)
          ];
        } else {
          return [
            MaterialDialogButton(
                button: properties.cancelButton!, theme: style),
            MaterialDialogButton(
                button: properties.okButton, theme: style)
          ];
        }
      case DialogType.custom:
        return [properties.customDialogProperties?.buttons ?? const Center()];
    }
  }

  Widget? _content() {
    switch (properties.dialogType) {
      case DialogType.normal:
        if(properties.message == null || (properties.message?.isEmpty ?? true)){
          return null;
        }else{
          return Text(
            properties.message ?? "",
            style: style?.messageStyle,
          );
        }
      case DialogType.input:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(properties.message ?? "", style: style?.messageStyle),
            const SizedBox(
              height: 10,
            ),
            TextField(
              enabled: properties.inputProperties?.enabled,
              autofocus: properties.inputProperties?.autoFocus ?? false,
              decoration: properties.inputProperties?.androidDecoration ??InputDecoration(hintText: properties.inputProperties?.hintText),
              onChanged: properties.inputProperties?.onChanged,
              controller: properties.inputProperties?.controller,
              focusNode: properties.inputProperties?.focusNode,
              maxLines: properties.inputProperties?.maxLines,
              minLines: properties.inputProperties?.minLines,
              textInputAction: properties.inputProperties?.inputAction,
              keyboardType: properties.inputProperties?.keyboardType,
              onTap: properties.inputProperties?.onTap,
            )
          ],
        );
      case DialogType.custom:
        return properties.customDialogProperties?.body ?? const Center();
    }
  }
}
