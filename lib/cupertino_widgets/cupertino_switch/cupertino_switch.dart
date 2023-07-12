
import '../export.dart';


class CupertinoSwitchWidget extends StatelessWidget {
  final SwitchProperties properties;
  final SwitchStyle? style;
  const CupertinoSwitchWidget({
    Key? key,
    required this.properties,
    this.style
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      key: const Key('cupertino_switch'),
      onChanged: properties.onChanged,
      value: properties.value,
      dragStartBehavior: properties.dragStartBehavior,
      activeColor: style?.activeColor,
      thumbColor: style?.thumbColor,
      trackColor: style?.trackColor,
    );
  }
}
