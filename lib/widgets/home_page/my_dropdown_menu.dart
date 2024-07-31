import 'package:ehub_web/color.dart';
import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/labeled_input.dart';
import 'package:flutter/material.dart';

class MyDropdownMenu extends StatelessWidget {
  const MyDropdownMenu({
    super.key,
    required this.labelText,
    required this.width,
    this.menuEntries,
  });

  final String labelText;
  final double width;
  final List<String>? menuEntries;

  @override
  Widget build(BuildContext context) {
    return LabeledInput(
      labelText: labelText,
      child: DropdownMenu<String>(
        width: width,
        textStyle: MyStyle.input,
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: MyColor.input,
          filled: true,
          suffixIconColor: MyColor.foreground,
          focusColor: MyColor.foreground,
        ),
        dropdownMenuEntries: menuEntries != null
            ? menuEntries!
                .map((value) => DropdownMenuEntry(value: value, label: value))
                .toList()
            : [],
        onSelected: (value) {
          print(value);
        },
      ),
    );
  }
}
