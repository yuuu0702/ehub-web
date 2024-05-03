import 'package:ehub_web/style.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({super.key, this.labelText});

  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelText != null ? Text(labelText!, style: MyStyle.text) : Container(),
        // 何も表示しない
        const SizedBox(height: 4),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            fillColor: Color(0xFF2C3740),
            filled: true,
          ),
        ),
      ],
    );
  }
}
