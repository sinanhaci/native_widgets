// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'button_properties_model.dart';

class ActionSheetModel {
  String? title;
  String? content;
  List<ButtonProperties> actions;
  ActionSheetModel({
    this.title,
    this.content,
    required this.actions,
  });
}

class CustomActionSheetTheme {
  TextStyle? iosCancelButtonTheme;
  TextStyle? iosTitleTheme;
  TextStyle? iosContentTheme;
  TextStyle? iosActionTheme;
  TextStyle? iosDefaultTheme;
  TextStyle? iosDestructiveTheme;
  TextStyle? androidTitleTheme;
  TextStyle? androidContentTheme;
  TextStyle? androidActionTheme;
  TextStyle? androidDefaultTheme;
  TextStyle? androidDestructiveTheme;
  CustomActionSheetTheme({
    this.iosCancelButtonTheme,
    this.iosTitleTheme,
    this.iosContentTheme,
    this.iosActionTheme,
    this.iosDefaultTheme,
    this.iosDestructiveTheme,
    this.androidTitleTheme,
    this.androidContentTheme,
    this.androidActionTheme,
    this.androidDefaultTheme,
    this.androidDestructiveTheme,
  });
}

