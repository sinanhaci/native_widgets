import 'package:flutter/material.dart';
import '../enums/dialog_type.dart';
import 'button_properties_model.dart';

class DialogModel {
  DialogType dialogType;
  String title;
  String content;
  ButtonProperties okButtonProperties;
  ButtonProperties? cancelButtonProperties;
  DialogInputProperties? inputProperties;
  DialogModel({
    this.dialogType = DialogType.inputOk,
    required this.title,
    required this.content,
    required this.okButtonProperties,
    this.cancelButtonProperties,
    this.inputProperties
  });   
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
  DialogInputProperties({
    this.onChanged,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.maxLines,
    this.minLines,
    this.inputAction,
    this.hintText
  });
}
