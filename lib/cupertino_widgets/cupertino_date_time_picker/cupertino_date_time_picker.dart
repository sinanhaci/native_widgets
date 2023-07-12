import '../export.dart';


class CupertinoDatePickerWidget extends StatelessWidget {
  final DatePickerProperties properties;
  const CupertinoDatePickerWidget({super.key, required this.properties});

  @override
  Widget build(BuildContext context) {
    var theme = CupertinoTheme.of(context);
    return Container(
      color: properties.style?.backgroundColor ?? theme.scaffoldBackgroundColor,
      height: properties.style?.height,
      child: Stack(
        children: [
          CupertinoDatePicker(
            backgroundColor: properties.style?.backgroundColor ?? theme.scaffoldBackgroundColor,
            maximumYear: properties.maximumYear ?? DateTime.now().year,
            minimumYear: properties.minimumYear ?? DateTime.now().year,
            maximumDate: properties.maximumDate ?? DateTime.parse(Constants.maximumDateTimeString),
            minimumDate: properties.minimumDate ?? DateTime.parse(Constants.minimumDateTimeString),
            initialDateTime: properties.initialDateTime ?? properties.time,
            mode: DateTimePickerType.getPlatformMode(properties.pickerType),
            dateOrder: properties.dateOrder,
            use24hFormat: properties.use24hFormat,
            onDateTimeChanged: (DateTime newDate) {
              properties.time = newDate;
            },
          ),
          Positioned(
            right: 0,
            top: 0,
            child: CupertinoButton(
              child: Text(properties.okButtonText),
              onPressed: () => Navigator.pop(context, properties.time),
            ),
          )
        ],
      ),
    );
  }
}
