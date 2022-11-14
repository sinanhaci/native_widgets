import 'package:flutter/material.dart';
import '../../models/action_sheet_model.dart';

class MaterialActionSheet extends StatelessWidget {
  final ActionSheetModel constructors;
  const MaterialActionSheet({super.key, required this.constructors});

  @override
  Widget build(BuildContext context) {
    var content = [
      if(constructors.title != null || constructors.content != null)
        ListTile(
          title: _getTextWidgetByConstructors(constructors.title),
          subtitle: _getTextWidgetByConstructors(constructors.content),
        ),
      const Divider(),
      ...constructors.actions
          .map((e) => ListTile(
                onTap: e.onPress,
                title: Text(e.buttonText,style: e.style),
                leading:e.icon == null ? null : Icon(e.icon),
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

  _getTextWidgetByConstructors(String? param) {
    return param == null ? null : Text(param);
  }

}
