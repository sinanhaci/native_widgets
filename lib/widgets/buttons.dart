import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:native_widgets/properties/action_sheet_properties.dart';
import 'package:native_widgets/properties/dialog_properties.dart';


class CupertinoActionSheetButton extends StatelessWidget {
  final ActionButton button;
  final ActionSheetStyle? style;
  const CupertinoActionSheetButton({super.key,required this.button,required this.style});

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = button.isDefaultAction ? style?.isDefaultActionStyle : button.isDestructiveAction ? style?.isDestructiveActionStyle : style?.buttonStyle;
    return CupertinoActionSheetAction(
        onPressed: button.onPress,
        isDefaultAction: button.isDefaultAction,
        isDestructiveAction: button.isDestructiveAction,
        child: button.icon == null ? 
        Text(
          button.text,
          style: textStyle
        ):
        Row(
          mainAxisAlignment: button.mainAxisAlignment,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(button.icon,color: style?.iconColor ?? (button.isDestructiveAction ? CupertinoColors.destructiveRed :  CupertinoColors.activeBlue),size: style?.iconSize),
            ),
            Text(
              button.text,
              style: textStyle
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



