import 'package:ehub_web/color.dart';
import 'package:ehub_web/widgets/common/labeled_input.dart';
import 'package:ehub_web/widgets/common/my_selector_base.dart';
import 'package:flutter/material.dart';

class MyTimeSelector extends StatefulWidget {
  const MyTimeSelector({super.key, this.labelText, required this.onChanged});

  final String? labelText;
  final void Function(TimeOfDay) onChanged;

  @override
  State<MyTimeSelector> createState() => _MyTimeSelectorState();
}

class _MyTimeSelectorState extends State<MyTimeSelector> {
  late TimeOfDay _time;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    setState(() {
      _time = TimeOfDay(hour: now.hour, minute: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LabeledInput(
      labelText: widget.labelText,
      child: MySelectorBase(
        iconData: Icons.access_time,
        text: _time.format(context),
        textWidth: 48,
        onTap: () async {
          // TODO: 変えたいUIがゴミ
          final picked = await showTimePicker(
            context: context,
            initialTime: _time,
            builder: (context, child) {
              return Theme(
                data: ThemeData.dark().copyWith(
                  timePickerTheme: const TimePickerThemeData(
                    backgroundColor: MyColor.background,
                  ),
                ),
                child: child!,
              );
            },
          );
          if (picked != null) {
            setState(() {
              _time = picked;
            });
            widget.onChanged(_time);
          }
        },
      ),
    );
  }
}
