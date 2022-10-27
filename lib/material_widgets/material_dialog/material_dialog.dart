import 'package:flutter/material.dart';
import '../../enums/dialog_type.dart';
import '../../models/dialog_models.dart';
import '../../widgets/buttons.dart';

class MaterialDialog extends StatelessWidget {
  final DialogModel constructors;
  const MaterialDialog({super.key, required this.constructors});

  @override
  Widget build(BuildContext context) {
    _assert();
    return AlertDialog(
        actionsAlignment: MainAxisAlignment.end,
        title: Text(
          constructors.title,
        ),
        content: _getContentWidgetByDialogType(),
        actions: _getActionWidgetsByDialogType());
  }

  List<Widget> _getActionWidgetsByDialogType() {
    switch (constructors.dialogType) {
      case DialogType.ok:
      case DialogType.inputOk:
        return [MaterialDialogButton(constructors: constructors.okButtonProperties)];
      case DialogType.okCancel:
      case DialogType.inputOkCancel:
        return [
          MaterialDialogButton(constructors: constructors.cancelButtonProperties),
          MaterialDialogButton(constructors: constructors.okButtonProperties!)
        ];
    }
  }

  Widget _getContentWidgetByDialogType() {
    switch (constructors.dialogType) {
      case DialogType.ok:
      case DialogType.okCancel:
        return Text(constructors.content);
      case DialogType.inputOk:
      case DialogType.inputOkCancel:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              constructors.content,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: constructors.inputProperties?.hintText
              ),
              onChanged: constructors.inputProperties?.onChanged,
              controller: constructors.inputProperties?.controller,
              focusNode: constructors.inputProperties?.focusNode,
              maxLines: constructors.inputProperties?.maxLines,
              minLines: constructors.inputProperties?.minLines,
              textInputAction: constructors.inputProperties?.inputAction,
              keyboardType: constructors.inputProperties?.keyboardType,
            )
          ],
        );
    }
  }


  _assert() {
    switch (constructors.dialogType) {
      case DialogType.ok:
        assert(constructors.cancelButtonProperties == null);
        assert(constructors.inputProperties == null);
        break;
      case DialogType.okCancel:
        assert(constructors.cancelButtonProperties != null);
        assert(constructors.inputProperties == null);
        break;
      case DialogType.inputOk:
        assert(constructors.inputProperties != null);
        assert(constructors.cancelButtonProperties == null);
        break;
      case DialogType.inputOkCancel:
        assert(constructors.inputProperties != null);
        assert(constructors.cancelButtonProperties != null);
    }
  }
}
