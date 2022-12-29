
import 'package:flutter/cupertino.dart';
import '../../models/switch_model.dart';

class CupertinoSwitchWidget extends StatelessWidget {
  final CustomSwitchModel constructors;
  final CustomSwitchTheme? theme;
  const CupertinoSwitchWidget({
    Key? key,
    this.theme,
    required this.constructors,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      key: const Key('cupertino_switch'),
      onChanged: constructors.onChanged,
      value: constructors.value,
      dragStartBehavior: constructors.dragStartBehavior,
      activeColor: theme?.activeColor,
      thumbColor: theme?.thumbColor,
      trackColor: theme?.trackColor,
    );
  }
}
