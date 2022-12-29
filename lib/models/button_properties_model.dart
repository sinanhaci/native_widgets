// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonProperties {
  String buttonText;
  bool isDestructiveAction;
  bool isDefaultAction;
  void Function() onPress;
  IconData? icon;
  ButtonProperties({
    required this.buttonText,
    this.isDestructiveAction = false,
    this.isDefaultAction = false,
    required this.onPress,
    this.icon
  });
}


class CustomButtonTheme {
  TextStyle? iosEmptyTheme;
  TextStyle? iosDefaultTextTheme;
  TextStyle? iosDestructiveTheme;
  TextStyle? androidEmptyTheme;
  TextStyle? androidDefaultTextTheme;
  TextStyle? androidDestructiveTheme;
  CustomButtonTheme({
    this.iosEmptyTheme,
    this.iosDefaultTextTheme,
    this.iosDestructiveTheme,
    this.androidEmptyTheme,
    this.androidDefaultTextTheme,
    this.androidDestructiveTheme,
  });
}
