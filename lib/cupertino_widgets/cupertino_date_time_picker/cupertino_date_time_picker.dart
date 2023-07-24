import 'package:flutter/material.dart';

import '../export.dart';


class CupertinoDatePickerWidget extends StatelessWidget {
  final DatePickerProperties properties;
  final DatePickerStyle? style;
  const CupertinoDatePickerWidget({super.key, required this.properties,this.style});

  @override
  Widget build(BuildContext context) {
    var theme = CupertinoTheme.of(context);
    return Container(
      color: style?.backgroundColor ?? theme.scaffoldBackgroundColor,
      height: style?.height,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: CupertinoDatePicker(
              backgroundColor: style?.backgroundColor ?? theme.scaffoldBackgroundColor,
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
          ),
          Positioned(
            right: 0,
            top: 0,
            left: 0,
            child: Container(
              height: 40,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black26
                  )
                )
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(properties.title ?? "",style: style?.titleStyle),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Text(properties.okButtonText),
                    onPressed: () => Navigator.pop(context, properties.time),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
