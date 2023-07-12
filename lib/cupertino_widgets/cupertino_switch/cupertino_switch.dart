
import 'package:flutter/cupertino.dart';
import '../../properties/switch_properties.dart';

class CupertinoSwitchWidget extends StatelessWidget {
  final SwitchProperties properties;
  const CupertinoSwitchWidget({
    Key? key,
    required this.properties,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      key: const Key('cupertino_switch'),
      onChanged: properties.onChanged,
      value: properties.value,
      dragStartBehavior: properties.dragStartBehavior,
      activeColor: properties.theme?.activeColor,
      thumbColor: properties.theme?.thumbColor,
      trackColor: properties.theme?.trackColor,
    );
  }
}
