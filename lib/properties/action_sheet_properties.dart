import 'package:flutter/material.dart';

class ActionSheetProperties {
  String? title;
  String? content;
  ActionTheme? theme;
  List<ActionButton> actions;
  ActionSheetProperties({
    this.title,
    this.content,
    required this.actions,
  });
}

class ActionButton {
  String text;
  bool isDestructiveAction;
  bool isDefaultAction;
  IconData? icon;
  Color? iconColor;
  MainAxisAlignment mainAxisAlignment;
  void Function() onPress;
  ActionButton({
    required this.text,
    this.isDestructiveAction = false,
    this.isDefaultAction = false,
    required this.onPress,
    this.icon,
    this.mainAxisAlignment = MainAxisAlignment.start
  });
}

class ActionTheme {
  TextStyle? titleStyle;
  TextStyle? messageStyle;
  TextStyle? buttonStyle;
  TextStyle? actionButtonStyle;
  TextStyle? isDefaultActionStyle;
  TextStyle? isDestructiveActionStyle;

  ActionTheme({
    this.titleStyle,
    this.messageStyle,
    this.buttonStyle,
    this.actionButtonStyle,
    this.isDefaultActionStyle,
    this.isDestructiveActionStyle
  });

  ActionTheme copyWith({
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    TextStyle? buttonStyle,
    TextStyle? actionButtonStyle,
    TextStyle? isDefaultActionStyle,
    TextStyle? isDestructiveActionStyle,
  }){
    return ActionTheme(
      titleStyle: titleStyle ?? this.titleStyle,
      messageStyle: messageStyle ?? this.messageStyle,
      buttonStyle: buttonStyle ?? this.buttonStyle,
      actionButtonStyle: actionButtonStyle ?? this.actionButtonStyle,
      isDefaultActionStyle: isDefaultActionStyle ?? this.isDefaultActionStyle,
      isDestructiveActionStyle: isDestructiveActionStyle ?? this.isDestructiveActionStyle
    );
  }
}

