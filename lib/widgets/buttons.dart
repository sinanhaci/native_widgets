import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/button_properties_model.dart';

class CupertinoActionSheetButton extends StatelessWidget {
  final ButtonProperties constructors;
  const CupertinoActionSheetButton({super.key,required this.constructors});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheetAction(
        onPressed: constructors.onPress,
        isDefaultAction: constructors.isDefaultAction,
        isDestructiveAction: constructors.isDestructiveAction,
        child: Text(
           constructors.buttonText,
          style: constructors.style
        ),
      );
  }
}

class CupertinoDialogButton extends StatelessWidget {
  final ButtonProperties constructors;
  const CupertinoDialogButton({super.key,required this.constructors});

  @override
  Widget build(BuildContext context) {
    return CupertinoDialogAction(
      isDestructiveAction: constructors.isDestructiveAction,
      isDefaultAction: constructors.isDefaultAction,
      onPressed: constructors.onPress,
      // ignore: sort_child_properties_last
      child: Text(
        constructors.buttonText,
        style: constructors.style
      ),
      textStyle: constructors.style,
    );
  }
}

class MaterialDialogButton extends StatelessWidget {
  final ButtonProperties constructors;
  const MaterialDialogButton({super.key,required this.constructors});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: constructors.onPress,
      child: Text(
        constructors.buttonText,
        style: constructors.style,
      ),
    );
  }
}

