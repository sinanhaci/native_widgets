import 'package:flutter/material.dart';
import '../../models/switch_model.dart';

class MaterialSwitchWidget extends StatelessWidget {
  final CustomSwitchModel constructors;
  final CustomSwitchTheme? theme;
  const MaterialSwitchWidget({super.key,required this.constructors,this.theme});

  @override
  Widget build(BuildContext context) {
    return Switch(
      onChanged: constructors.onChanged,
      value: constructors.value,
      activeColor: theme?.activeColor,
      dragStartBehavior: constructors.dragStartBehavior,
      trackColor: MaterialStateProperty.all(theme?.trackColor),
      thumbColor: MaterialStateProperty.all(theme?.thumbColor),
    );
  }
}