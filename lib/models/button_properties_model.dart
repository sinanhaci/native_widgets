import 'package:flutter/material.dart';

class ButtonProperties {
  String buttonText;
  bool isDestructiveAction;
  bool isDefaultAction;
  void Function() onPress;
  TextStyle? style;
  IconData? icon;
  ButtonProperties({
    required this.buttonText,
    this.isDestructiveAction = false,
    this.isDefaultAction = false,
    required this.onPress,
    this.style,
    this.icon
  });
}