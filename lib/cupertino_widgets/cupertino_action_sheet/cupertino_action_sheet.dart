import 'package:flutter/cupertino.dart';
import '../../properties/action_sheet_properties.dart';
import '../../widgets/buttons.dart';

class CupertinoActionSheetWidget extends StatelessWidget {
  final ActionSheetProperties properties;
  const CupertinoActionSheetWidget({super.key, required this.properties,});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: _getTextWidgetByConstructors(properties.title,properties.theme?.titleStyle),
      message: _getTextWidgetByConstructors(properties.content,properties.theme?.messageStyle),
      cancelButton: _getCancelButtonByConstructors(context),
      actions: properties.actions
          .map((element) => CupertinoActionSheetButton(
                button: element,
                theme: properties.theme,
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
            child: Text('Cancel',style: properties.theme?.buttonStyle),
          );
       
  }
}
