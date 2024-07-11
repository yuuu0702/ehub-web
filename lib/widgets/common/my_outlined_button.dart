import 'package:ehub_web/color.dart';
import 'package:ehub_web/widgets/common/my_button_base.dart';
import 'package:flutter/material.dart';

class MyOutlinedColor extends StatelessWidget {
  const MyOutlinedColor({
    super.key,
    this.text,
    this.child,
    this.onTap,
    this.isJp = false,
    this.width,
    this.height,
  });

  final String? text;
  final Widget? child;
  final void Function()? onTap;
  final bool isJp;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return MyButtonBase(
      onTap: onTap,
      width: width,
      height: height,
      foregroundColor: MyColor.foreground,
      backgroundColor: Colors.transparent,
      outline: true,
      text: text,
      isJp: isJp,
      child: child,
    );
  }
}
