import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:native_widgets/properties/action_sheet_properties.dart';
import 'package:native_widgets/properties/dialog_properties.dart';


class CupertinoActionSheetButton extends StatelessWidget {
  final ActionButton button;
  final ActionTheme? theme;
  const CupertinoActionSheetButton({super.key,required this.button,required this.theme});

  @override
  Widget build(BuildContext context) {
    TextStyle? style = button.isDefaultAction ? theme?.isDefaultActionStyle : button.isDestructiveAction ? theme?.isDestructiveActionStyle : theme?.buttonStyle;
    return CupertinoActionSheetAction(
        onPressed: button.onPress,
        isDefaultAction: button.isDefaultAction,
        isDestructiveAction: button.isDestructiveAction,
        child: button.icon == null ? 
        Text(
          button.text,
          style: style
        ):
        Row(
          mainAxisAlignment: button.mainAxisAlignment,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(button.icon,color: button.isDestructiveAction ? CupertinoColors.destructiveRed :  CupertinoColors.activeBlue),
            ),
            Text(
              button.text,
              style: style
            ),
          ],
        ),
      );
  }
}

class CupertinoDialogButton extends StatelessWidget {
  final DialogButtonProperties button;
  final DialogStyle? theme;
  const CupertinoDialogButton({super.key,required this.button,this.theme});

  @override
  Widget build(BuildContext context) {
    return CupertinoDialogAction(
      isDestructiveAction: button.isDestructiveButton,
      isDefaultAction: button.isDefaultButton,
      onPressed: button.onPress,
      child: Text(
        button.text,
        style: button.isDefaultButton ? theme?.isDefaultButtonStyle : button.isDestructiveButton ? theme?.isDestructiveButtonStyle : theme?.buttonStyle
      )
    );
  }
}

class MaterialDialogButton extends StatelessWidget {
  final DialogButtonProperties button;
  final DialogStyle? theme;
  const MaterialDialogButton({super.key,required this.button,this.theme});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: button.onPress,
      child: Text(
        button.text,
        style: button.isDefaultButton ? theme?.isDefaultButtonStyle : button.isDestructiveButton ? theme?.isDestructiveButtonStyle : theme?.buttonStyle
      ),
    );
  }
}



