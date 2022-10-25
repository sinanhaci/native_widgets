import 'package:flutter/cupertino.dart';
import '../../models/action_sheet_model.dart';
import '../../widgets/buttons.dart';

class CupertinoActionSheetWidget extends StatelessWidget {
  final ActionSheetModel constructors;
  const CupertinoActionSheetWidget({super.key, required this.constructors});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      message: _getTextWidgetByConstructors(constructors.content),
      title: _getTextWidgetByConstructors(constructors.title),
      cancelButton: _getCancelButtonByConstructors(context),
      actions: constructors.actions
          .map((element) => CupertinoActionSheetButton(
                constructors: element,
              ))
          .toList(),
    );
  }

  _getTextWidgetByConstructors(String? param) {
    return param == null ? null : Text(param);
  }

  _getCancelButtonByConstructors(BuildContext context) {
    return constructors.defaultButtonProperties == null
        ? CupertinoActionSheetAction(
            key: const Key('Default Button'),
            onPressed: () => Navigator.pop(context),
            isDefaultAction: true,
            child: const Text('Cancel',style: TextStyle(color: CupertinoColors.systemRed)),
          )
        : CupertinoActionSheetButton(
            constructors: constructors.defaultButtonProperties!);
  }
}
