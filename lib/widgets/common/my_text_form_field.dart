import 'package:ehub_web/color.dart';
import 'package:ehub_web/style.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    this.labelText,
    required this.onChanged,
    this.maxLines = 1,
  });

  final String? labelText;
  final int maxLines;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText ?? '', style: MyStyle.captionJp),
        // 何も表示しない
        const SizedBox(height: 4),
        TextFormField(
          maxLines: maxLines,
          cursorColor: MyColor.foreground,
          cursorWidth: 3,
          style: MyStyle.input,
          decoration: const InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            fillColor: MyColor.input,
            filled: true,
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
