import 'package:ehub_web/style.dart';
import 'package:flutter/material.dart';

class MyButtonBase extends StatelessWidget {
  const MyButtonBase({
    super.key,
    this.text,
    this.child,
    required this.foregroundColor,
    required this.backgroundColor,
    this.outline = false,
    this.onTap,
    this.width,
    this.height,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    this.isJp = false,
  });

  final String? text;

  /// textがある場合はテキスト優先
  final Widget? child;
  final Color foregroundColor;
  final Color backgroundColor;
  final bool outline;
  final void Function()? onTap;
  final double? width;
  final double? height;
  final EdgeInsets padding;
  final bool isJp;

  Color get effectColor => foregroundColor.withOpacity(0.12);

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: width,
      height: height ?? 36,
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
            padding: padding,
            child: text != null
                ? Text(
                    text!,
                    style: isJp
                        ? MyStyle.buttonJp.copyWith(color: foregroundColor)
                        : MyStyle.button.copyWith(color: foregroundColor),
                  )
                : child,
          ),
        ),
      ),
    );
  }
}
