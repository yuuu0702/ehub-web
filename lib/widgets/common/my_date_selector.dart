import 'package:ehub_web/color.dart';
import 'package:ehub_web/widgets/common/labeled_input.dart';
import 'package:ehub_web/widgets/common/my_selector_base.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDateSelector extends StatefulWidget {
  const MyDateSelector({
    super.key,
    this.labelText,
    required this.onChanged,
  });

  final String? labelText;
  final void Function(DateTime) onChanged;

  @override
  State<MyDateSelector> createState() => _MyDateSelectorState();
}

class _MyDateSelectorState extends State<MyDateSelector> {
  late DateTime _dateTime;

  @override
  void initState() {
    super.initState();
    setState(() {
      _dateTime = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return LabeledInput(
      labelText: widget.labelText,
      child: MySelectorBase(
        iconData: Icons.calendar_month,
        // 最初は今日の日付
        // DatePickerで選択した日付が反映される
        text: DateFormat('yyyy/MM/dd').format(_dateTime),
        textWidth: 100,
        onTap: () async {
          final now = DateTime.now();
          // タップしたらDatePicker呼び出し
          final picked = await showDatePicker(
            context: context,
            locale: const Locale("ja"),
            firstDate: now,
            lastDate: DateTime(now.year + 10),
            currentDate: _dateTime,
            builder: (context, child) {
              return Theme(
                // TODO: 見た目ちゃんと変えたいけどめんどくさすぎるゴミ
                data: ThemeData.dark().copyWith(
                  datePickerTheme: const DatePickerThemeData(
                    backgroundColor: MyColor.input,
                    headerBackgroundColor: MyColor.background,
                    dividerColor: Colors.transparent,
                  ),
                ),
                child: child!,
              );
            },
          );
          if (picked != null) {
            setState(() {
              _dateTime = picked;
            });
            widget.onChanged(_dateTime);
          }
        },
      ),
    );
  }
}
