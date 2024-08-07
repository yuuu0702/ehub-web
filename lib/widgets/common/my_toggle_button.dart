import 'package:ehub_web/color.dart';
import 'package:ehub_web/widgets/common/my_button_base.dart';
import 'package:flutter/material.dart';

class MyToggleButton extends StatelessWidget {
  const MyToggleButton({
    super.key,
    this.width,
    this.height,
    required this.isSelected,
    this.onTap,
    this.child,
  });

  final double? width;
  final double? height;
  final bool isSelected;
  final Widget? child;
  final void Function(bool isSelected)? onTap;

  @override
  Widget build(BuildContext context) {
    return MyButtonBase(
      width: width,
      height: height,
      onTap: onTap != null
          ? () {
              onTap!(isSelected);
            }
          : null,
      foregroundColor: MyColor.foreground,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.zero,
      child: AnimatedOpacity(
        opacity: isSelected ? 1.0 : 0.2,
        duration: const Duration(milliseconds: 200),
        child: child,
      ),
    );
  }
}
