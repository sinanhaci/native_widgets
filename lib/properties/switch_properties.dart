import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SwitchProperties{
  final void Function(bool)? onChanged;
  final bool value;
  final DragStartBehavior dragStartBehavior;
  final SwitchStyle? theme;
  const SwitchProperties({
    Key? key,
    this.onChanged,
    required this.value,
    this.dragStartBehavior = DragStartBehavior.start,
    this.theme
  });
}


class SwitchStyle{
  final Color? activeColor;
  final Color? thumbColor;
  final Color? trackColor;

  SwitchStyle({this.activeColor, this.thumbColor, this.trackColor});
}
