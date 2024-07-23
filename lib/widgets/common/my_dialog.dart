import 'package:ehub_web/color.dart';
import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/my_icon_button.dart';
import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key, required this.title, this.children});

  final String title;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Row(
        children: [
          Text(title),
          const Spacer(),
          MyIconButton(
            iconData: Icons.close,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      titleTextStyle: MyStyle.titleJp,
      backgroundColor: MyColor.background,
      contentPadding: const EdgeInsets.all(24),
      children: children,
    );
  }
}
