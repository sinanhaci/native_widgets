import 'package:flutter/material.dart';
import '../../models/switch_model.dart';

class MaterialSwitchWidget extends StatelessWidget {
  final SwitchModel constructors;
  const MaterialSwitchWidget({super.key,required this.constructors});

  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: constructors.onChanged,
      value: constructors.value,
      activeColor: constructors.activeColor,
      dragStartBehavior: constructors.dragStartBehavior,
      trackColor: MaterialStateProperty.all(constructors.trackColor),
      thumbColor: MaterialStateProperty.all(constructors.thumbColor),
    );
  }
}