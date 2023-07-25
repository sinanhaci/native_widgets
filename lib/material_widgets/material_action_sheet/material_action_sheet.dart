import 'package:flutter/material.dart';
import '../../properties/action_sheet_properties.dart';

class MaterialActionSheet extends StatelessWidget {
  final ActionSheetProperties properties;
  final ActionSheetStyle? style;
  const MaterialActionSheet({super.key, required this.properties,this.style});

  @override
  Widget build(BuildContext context) {
    var content = [

      Column(
        mainAxisSize: MainAxisSize.min,
        children: properties.actions
        .map((e) => ListTile(
              visualDensity: style?.androidVisualDensity,
              minLeadingWidth: 10,
              onTap: e.onPress,
              title: Text(e.text, style: e.isDefaultAction ? style?.isDefaultActionStyle : e.isDestructiveAction ? (style?.isDestructiveActionStyle ?? const TextStyle(color: Colors.red)) : style?.actionButtonStyle),
              leading: e.icon == null ? null : Icon(e.icon,color: style?.iconColor ?? (e.isDestructiveAction ? Colors.red : Colors.blue),size: style?.iconSize),
            ))
        .toList()
      )
    ];
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: properties.title != null || properties.content != null ? const EdgeInsets.only(top: 70) : EdgeInsets.zero,
            child: ListView(
              shrinkWrap: true,
              children: content,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                if(properties.title != null || properties.content != null)
                ...[ListTile(
                    tileColor: properties.androidInfoTileColor,
                    title: _getTextWidgetByConstructors(properties.title,style?.titleStyle),
                    subtitle: _getTextWidgetByConstructors(properties.content,style?.messageStyle),
                    trailing: properties.androidShowCloseButton ? 
                      IconButton(
                        visualDensity: VisualDensity.compact,
                        icon: const Icon(Icons.close,size: 30),
                        onPressed: () => Navigator.pop(context),
                      ) : null,
                  ),
                const Divider(height: 1,)],
              ],
            ),
          )
        ],
      ),
    );
  }

  _getTextWidgetByConstructors(String? param,TextStyle? style) {
    return param == null ? null : Text(param,style: style);
  }

}
