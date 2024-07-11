import 'package:ehub_web/color.dart';
import 'package:ehub_web/widgets/common/my_button_base.dart';
import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    super.key,
    required this.iconData,
    this.onTap,
  });

  final IconData iconData;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MyButtonBase(
      onTap: onTap,
      foregroundColor: MyColor.foreground,
      backgroundColor: Colors.transparent,
      isJp: false,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Icon(iconData, color: MyColor.foreground),
    );
  }
}
