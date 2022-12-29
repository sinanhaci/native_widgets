import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomSwitchModel{
  final void Function(bool)? onChanged;
  final bool value;
  final DragStartBehavior dragStartBehavior;
  const CustomSwitchModel({
    Key? key,
    this.onChanged,
    required this.value,
    this.dragStartBehavior = DragStartBehavior.start,
  });
}


class CustomSwitchTheme{
  final Color? activeColor;
  final Color? thumbColor;
  final Color? trackColor;

  CustomSwitchTheme({this.activeColor, this.thumbColor, this.trackColor});
}
