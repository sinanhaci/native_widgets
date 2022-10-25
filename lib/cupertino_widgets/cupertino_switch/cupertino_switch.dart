
import 'package:flutter/cupertino.dart';
import '../../models/switch_model.dart';

class CupertinoSwitchWidget extends StatelessWidget {
  final SwitchModel constructors;
  const CupertinoSwitchWidget({
    Key? key,
    required this.constructors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      key: const Key('cupertino_switch'),
      onChanged: constructors.onChanged,
      value: constructors.value,
      activeColor: constructors.activeColor,
      dragStartBehavior: constructors.dragStartBehavior,
      thumbColor: constructors.thumbColor,
      trackColor: constructors.trackColor,
    );
  }
}
