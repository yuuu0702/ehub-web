import 'package:ehub_web/color.dart';
import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/labeled_input.dart';
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
    return LabeledInput(
      labelText: labelText,
      child: TextFormField(
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
    );
  }
}
