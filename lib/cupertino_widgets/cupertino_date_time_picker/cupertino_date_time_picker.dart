import 'package:flutter/cupertino.dart';
import '../../../constants/constants.dart';
import '../../enums/date_time_picker_type.dart';
import '../../models/date_time_picker_model.dart';

class CupertinoDatePickerWidget extends StatelessWidget {
  final DateTimePickerModel constructors;
  const CupertinoDatePickerWidget({super.key, required this.constructors});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          CupertinoDatePicker(
            maximumYear: constructors.maximumYear ?? DateTime.now().year,
            minimumYear: constructors.minimumYear ?? DateTime.now().year,
            maximumDate: constructors.maximumDate ??
                DateTime.parse(Constants.maximumDateTimeString),
            minimumDate: constructors.minimumDate ??
                DateTime.parse(Constants.minimumDateTimeString),
            initialDateTime: constructors.initialDateTime ?? constructors.time,
            mode: DateTimePickerType.getPlatformMode(constructors.pickerType),
            dateOrder: DatePickerDateOrder.dmy,
            use24hFormat: true,
            onDateTimeChanged: (DateTime newDate) {
              constructors.time = newDate;
            },
          ),
          Positioned(
            right: 0,
            top: 0,
            child: CupertinoButton(
              child: const Text('Done'),
              onPressed: () {
                Navigator.pop(context, constructors.time);
              },
            ),
          )
        ],
      ),
    );
  }
}
