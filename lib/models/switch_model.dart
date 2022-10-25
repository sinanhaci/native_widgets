import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SwitchModel{
  final void Function(bool)? onChanged;
  final bool value;
  final Color? activeColor;
  final DragStartBehavior dragStartBehavior;
  final Color? thumbColor;
  final Color? trackColor;
  const SwitchModel({
    Key? key,
    this.onChanged,
    required this.value,
    this.activeColor,
    this.dragStartBehavior = DragStartBehavior.start,
    this.thumbColor,
    this.trackColor,
  });
}