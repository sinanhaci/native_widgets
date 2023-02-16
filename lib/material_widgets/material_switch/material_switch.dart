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
      dragStartBehavior: constructors.dragStartBehavior,
      activeColor: widget.theme?.activeColor,
      trackColor: MaterialStateProperty.resolveWith((states) =>
          states.contains(MaterialState.selected)
              ? widget.theme?.activeColor
              : widget.theme?.trackColor),
      thumbColor: MaterialStateProperty.all(widget.theme?.thumbColor),
    );
  }
}
