import 'package:ehub_web/color.dart';
import 'package:ehub_web/style.dart';
import 'package:flutter/material.dart';

class MyDateInputField extends StatelessWidget {
  const MyDateInputField({
    super.key,
    this.labelText,
    required this.onChanged,
  });

  final String? labelText;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText ?? '', style: MyStyle.captionJp),
        // 何も表示しない
        const SizedBox(height: 4),
        Ink(
          decoration: BoxDecoration(
            color: MyColor.input,
            borderRadius: BorderRadius.circular(4),
          ),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(4),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 112,
                    child: Text('2024/07/30', style: MyStyle.input),
                  ),
                  const SizedBox(width: 12),
                  const Icon(Icons.calendar_month, color: MyColor.foreground),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
