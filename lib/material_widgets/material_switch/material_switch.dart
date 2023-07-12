import 'package:flutter/material.dart';
import '../../properties/switch_properties.dart';

class MaterialSwitchWidget extends StatelessWidget {
  final SwitchProperties properties;
  final SwitchStyle? style;
  const MaterialSwitchWidget({super.key, required this.properties,this.style});

  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: properties.onChanged,
      value: properties.value,
      dragStartBehavior: properties.dragStartBehavior,
      activeColor: style?.activeColor,
      trackColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? style?.activeColor
            : style?.trackColor,
      ),
      thumbColor: MaterialStateProperty.all(style?.thumbColor),
    );
  }
}
