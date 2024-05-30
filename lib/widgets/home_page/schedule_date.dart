import 'package:ehub_web/color.dart';
import 'package:ehub_web/style.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ScheduleDate extends StatelessWidget {
  const ScheduleDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Symbols.calendar_clock,
          size: 20,
          color: MyColor.blue,
        ),
        const SizedBox(width: 8),
        Text(
          '2024-4-11',
          style: MyStyle.text.copyWith(
            color: MyColor.blue,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '21:00 - 23:00',
          style: MyStyle.subText.copyWith(
            color: MyColor.blue,
          ),
        ),
      ],
    );
  }
}
