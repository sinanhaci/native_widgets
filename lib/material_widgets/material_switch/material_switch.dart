import 'package:flutter/material.dart';
import '../../properties/switch_properties.dart';

class MaterialSwitchWidget extends StatelessWidget {
  final SwitchProperties properties;
  const MaterialSwitchWidget({super.key, required this.properties});

  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: properties.onChanged,
      value: properties.value,
      dragStartBehavior: properties.dragStartBehavior,
      activeColor: properties.theme?.activeColor,
      trackColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? properties.theme?.activeColor
            : properties.theme?.trackColor,
      ),
      thumbColor: MaterialStateProperty.all(properties.theme?.thumbColor),
    );
  }
}
