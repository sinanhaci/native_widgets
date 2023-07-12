import 'package:flutter/material.dart';
import '../enums/dialog_type.dart';

class DialogProperties {
  String title;
  String message;
  DialogButtonProperties okButton;
  DialogButtonProperties? cancelButton;
  DialogStyle theme;
  DialogInputProperties? inputProperties;
  DialogType dialogType;
  CustomDialogProperties? customDialogProperties;
  DialogProperties({
    this.dialogType = DialogType.normal,
    required this.title,
    required this.message,
    required this.okButton,
    this.cancelButton,
    required this.theme,
    this.inputProperties,
    this.customDialogProperties
  });   
}


class DialogButtonProperties {
  String text;
  void Function()? onPress;
  bool isDefaultButton;
  bool isDestructiveButton;
  DialogButtonProperties({
    required this.text,
    this.onPress,
    this.isDefaultButton = false,
    this.isDestructiveButton = false
  });
}

class DialogStyle {
  TextStyle? titleStyle;
  TextStyle? messageStyle;
  TextStyle? buttonStyle;
  TextStyle? isDestructiveButtonStyle;
  TextStyle? isDefaultButtonStyle;
  DialogStyle({
    this.titleStyle,
    this.messageStyle,
    this.buttonStyle,
    this.isDestructiveButtonStyle,
    this.isDefaultButtonStyle
  });

  DialogStyle copyWith({
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    TextStyle? buttonStyle,
    TextStyle? isDestructiveButtonStyle,
    TextStyle? isDefaultButtonStyle,
  }){
    return DialogStyle(
      titleStyle: titleStyle ?? this.titleStyle,
      messageStyle: messageStyle ?? this.messageStyle,
      buttonStyle: buttonStyle ?? this.buttonStyle,
      isDestructiveButtonStyle: isDestructiveButtonStyle ?? this.isDestructiveButtonStyle,
      isDefaultButtonStyle: isDefaultButtonStyle ?? this.isDefaultButtonStyle,
    );
  }
}

class DialogInputProperties {
  void Function(String)? onChanged;
  TextEditingController? controller;
  FocusNode? focusNode;
  TextInputType? keyboardType;
  int? maxLines;
  int? minLines;
  TextInputAction? inputAction;
  String? hintText;
  bool autoFocus;
  bool enabled;
  InputDecoration? androidDecoration;
  BoxDecoration? iosDecoration;
  void Function()? onTap;
  DialogInputProperties({
    this.onChanged,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.maxLines,
    this.minLines,
    this.inputAction,
    this.hintText,
    this.autoFocus = false,
    this.enabled = true,
    this.androidDecoration,
    this.iosDecoration,
    this.onTap
  });
}

class CustomDialogProperties {
  Widget title;
  Widget? body;
  Widget buttons;

  CustomDialogProperties({
    required this.title,
    this.body,
    required this.buttons
  });
}