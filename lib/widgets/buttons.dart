import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:native_widgets/models/action_sheet_model.dart';
import '../models/button_properties_model.dart';

class CupertinoActionSheetButton extends StatelessWidget {
  final ButtonProperties constructors;
  final CustomActionSheetTheme? theme;
  const CupertinoActionSheetButton({super.key,required this.constructors,this.theme});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheetAction(
        onPressed: constructors.onPress,
        isDefaultAction: constructors.isDefaultAction,
        isDestructiveAction: constructors.isDestructiveAction,
        child: constructors.icon == null ? 
        Text(
          constructors.buttonText,
          style: constructors.isDefaultAction ? theme?.iosDefaultTheme : constructors.isDestructiveAction ? theme?.iosDestructiveTheme : theme?.iosActionTheme,
        ):
        Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            Icon(constructors.icon,color:constructors.isDefaultAction ? theme?.iosDefaultTheme?.color : constructors.isDestructiveAction ? theme?.iosDestructiveTheme?.color : theme?.iosActionTheme?.color),
            const SizedBox(
              width: 10,
            ),
            Text(
               constructors.buttonText,
              style: constructors.isDefaultAction ? theme?.iosDefaultTheme : constructors.isDestructiveAction ? theme?.iosDestructiveTheme : theme?.iosActionTheme,
            ),
          ],
        ),
      );
  }
}

class CupertinoDialogButton extends StatelessWidget {
  final ButtonProperties constructors;
  final CustomButtonTheme? theme;
  const CupertinoDialogButton({super.key,required this.constructors,this.theme});

  @override
  Widget build(BuildContext context) {
    return CupertinoDialogAction(
      isDestructiveAction: constructors.isDestructiveAction,
      isDefaultAction: constructors.isDefaultAction,
      onPressed: constructors.onPress,
      child:Text(
        constructors.buttonText,
        style:  constructors.isDefaultAction ? theme?.iosDefaultTextTheme : constructors.isDestructiveAction ? theme?.iosDestructiveTheme : theme?.iosEmptyTheme
      )
    );
  }
}

class MaterialDialogButton extends StatelessWidget {
  final ButtonProperties constructors;
  final CustomButtonTheme? theme;
  const MaterialDialogButton({super.key,required this.constructors,this.theme});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: constructors.onPress,
      child: Text(
        constructors.buttonText,
        style: constructors.isDefaultAction ? theme?.androidDefaultTextTheme : constructors.isDestructiveAction ? theme?.androidDestructiveTheme : theme?.androidEmptyTheme
      ),
    );
  }
}



