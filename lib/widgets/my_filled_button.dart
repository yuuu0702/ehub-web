import 'package:ehub_web/color.dart';
import 'package:ehub_web/widgets/my_button_base.dart';
import 'package:flutter/material.dart';

class MyFilledButton extends StatelessWidget {
  const MyFilledButton({
    super.key,
    this.text,
    this.child,
    this.onTap,
    this.isJp = false,
    this.width,
  });

  final String? text;
  final Widget? child;
  final void Function()? onTap;
  final bool isJp;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return MyButtonBase(
      onTap: onTap,
      width: width,
      foregroundColor: MyColor.background,
      backgroundColor: MyColor.foreground,
      text: text,
      child: child,
    );
  }
}
