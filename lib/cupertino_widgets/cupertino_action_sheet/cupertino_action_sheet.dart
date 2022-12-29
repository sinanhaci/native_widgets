import 'package:flutter/cupertino.dart';
import '../../models/action_sheet_model.dart';
import '../../widgets/buttons.dart';

class CupertinoActionSheetWidget extends StatelessWidget {
  final ActionSheetModel constructors;
  final CustomActionSheetTheme? theme;
  const CupertinoActionSheetWidget({super.key, required this.constructors,this.theme});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      message: _getTextWidgetByConstructors(constructors.content,theme?.iosContentTheme),
      title: _getTextWidgetByConstructors(constructors.title,theme?.iosTitleTheme),
      cancelButton: _getCancelButtonByConstructors(context),
      actions: constructors.actions
          .map((element) => CupertinoActionSheetButton(
                constructors: element,
              ))
          .toList(),
    );
  }

  _getTextWidgetByConstructors(String? param,TextStyle? style) {
    return param == null ? null : Text(param,style: style);
  }

  _getCancelButtonByConstructors(BuildContext context) {
    return CupertinoActionSheetAction(
            key: const Key('Default Button'),
            onPressed: () => Navigator.pop(context),
            isDefaultAction: true,
            child: Text('Cancel',style: theme?.iosCancelButtonTheme),
          );
       
  }
}
