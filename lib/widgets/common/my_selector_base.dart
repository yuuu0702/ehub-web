import 'package:ehub_web/color.dart';
import 'package:ehub_web/style.dart';
import 'package:flutter/material.dart';

class MySelectorBase extends StatelessWidget {
  const MySelectorBase({
    super.key,
    required this.text,
    required this.textWidth,
    required this.iconData,
    this.onTap,
  });

  final String text;
  final double textWidth;
  final IconData iconData;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: MyColor.input,
        borderRadius: BorderRadius.circular(4),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        splashColor: Colors.transparent,
        highlightColor: MyColor.foreground.withOpacity(0.12),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: textWidth,
                child: Text(text, style: MyStyle.input),
              ),
              const SizedBox(width: 12),
              Icon(iconData, color: MyColor.foreground),
            ],
          ),
        ),
      ),
    );
  }
}
