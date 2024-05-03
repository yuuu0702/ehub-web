import 'package:ehub_web/color.dart';
import 'package:ehub_web/widgets/my_button_base.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    super.key,
    required this.text,
    this.onTap,
    this.isJp = false,
    this.width,
  });

  final String text;
  final void Function()? onTap;
  final bool isJp;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return MyButtonBase(
      text: text,
      onTap: onTap,
      width: width,
      foregroundColor: MyColor.foreground,
      backgroundColor: Colors.transparent,
    );
  }
}
