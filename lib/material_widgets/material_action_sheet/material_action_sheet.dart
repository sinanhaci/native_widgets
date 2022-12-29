import 'package:flutter/material.dart';
import '../../models/action_sheet_model.dart';
import '../../models/button_properties_model.dart';

class MaterialActionSheet extends StatelessWidget {
  final ActionSheetModel constructors;
  final CustomActionSheetTheme? theme;
  const MaterialActionSheet({super.key, required this.constructors,this.theme});

  @override
  Widget build(BuildContext context) {
    var content = [
      if(constructors.title != null || constructors.content != null)
        ListTile(
          title: _getTextWidgetByConstructors(constructors.title,theme?.androidTitleTheme),
          subtitle: _getTextWidgetByConstructors(constructors.content,theme?.androidContentTheme),
        ),
      const Divider(),
      ...constructors.actions
          .map((e) => ListTile(
                onTap: e.onPress,
                title: Text(e.buttonText, style:e.isDefaultAction ? theme?.androidDefaultTheme : e.isDestructiveAction ? theme?.androidDestructiveTheme : theme?.androidActionTheme),
                leading:e.icon == null ? null : Icon(e.icon,color:e.isDefaultAction ? theme?.androidDefaultTheme?.color : e.isDestructiveAction ? theme?.androidDestructiveTheme?.color : theme?.androidActionTheme?.color),
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
