// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SwitchProperties {
  final void Function(bool)? onChanged;
  final bool value;
  final DragStartBehavior dragStartBehavior;
  const SwitchProperties({
    Key? key,
    this.onChanged,
    required this.value,
    this.dragStartBehavior = DragStartBehavior.start,
  });
}

class SwitchStyle {
  final Color? activeColor;
  final Color? thumbColor;
  final Color? trackColor;

  SwitchStyle({this.activeColor, this.thumbColor, this.trackColor});

  SwitchStyle copyWith({
    Color? activeColor,
    Color? thumbColor,
    Color? trackColor,
  }) {
    return SwitchStyle(
      activeColor: activeColor ?? this.activeColor,
      thumbColor: thumbColor ?? this.thumbColor,
      trackColor: trackColor ?? this.trackColor,
    );
  }
}
