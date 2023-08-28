import 'package:flutter/cupertino.dart';
import '../../properties/action_sheet_properties.dart';
import '../../widgets/buttons.dart';

class CupertinoActionSheetWidget extends StatelessWidget {
  final ActionSheetProperties properties;
  final ActionSheetStyle? style;
  const CupertinoActionSheetWidget({super.key, required this.properties,this.style});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: _getTextWidgetByConstructors(properties.title,style?.titleStyle),
      message: _getTextWidgetByConstructors(properties.content,style?.messageStyle),
      cancelButton: _getCancelButtonByConstructors(context),
      actions: properties.actions
          .map((element) => CupertinoActionSheetButton(
                button: element,
                style: style,
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
            child: Text(properties.defaultButtonText,style: style?.buttonStyle),
          );
       
  }
}
