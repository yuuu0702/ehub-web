import 'package:ehub_web/style.dart';
import 'package:flutter/material.dart';

class MyButtonBase extends StatelessWidget {
  const MyButtonBase({
    super.key,
    required this.text,
    required this.foregroundColor,
    required this.backgroundColor,
    this.outline = false,
    this.onTap,
    this.width,
    this.height = 40,
  });

  final String text;
  final Color foregroundColor;
  final Color backgroundColor;
  final bool outline;
  final void Function()? onTap;
  final double? width;
  final double? height;

  Color get effectColor => foregroundColor.withOpacity(0.12);

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: backgroundColor,
        border: outline ? Border.all(color: foregroundColor, width: 1) : null,
      ),
      child: InkWell(
        highlightColor: effectColor,
        hoverColor: effectColor,
        splashColor: effectColor,
        borderRadius: BorderRadius.circular(4),
        onTap: onTap,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              text,
              style: MyStyle.button.copyWith(color: foregroundColor),
            ),
          ),
        ),
      ),
    );
  }
}
