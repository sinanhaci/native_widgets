import 'package:flutter/material.dart';
import '../../properties/action_sheet_properties.dart';

class MaterialActionSheet extends StatelessWidget {
  final ActionSheetProperties properties;
  const MaterialActionSheet({super.key, required this.properties});

  @override
  Widget build(BuildContext context) {
    var content = [
      if(properties.title != null || properties.content != null)
      ...[ListTile(
          title: _getTextWidgetByConstructors(properties.title,properties.theme?.titleStyle),
          subtitle: _getTextWidgetByConstructors(properties.content,properties.theme?.messageStyle),
        ),
      const Divider()],
      ...properties.actions
          .map((e) => ListTile(
                minLeadingWidth: 10,
                onTap: e.onPress,
                title: Text(e.text, style: e.isDefaultAction ? properties.theme?.isDefaultActionStyle : e.isDestructiveAction ? properties.theme?.isDestructiveActionStyle : properties.theme?.actionButtonStyle),
                leading:e.icon == null ? null : Icon(e.icon,color: e.iconColor),
              ))
          .toList()
    ];
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: content,
      ),
    );
  }

  _getTextWidgetByConstructors(String? param,TextStyle? style) {
    return param == null ? null : Text(param,style: style);
  }

}
