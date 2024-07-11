import 'package:ehub_web/color.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.content,
    this.actions,
  });

  final Widget content;
  final Widget? actions;

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: MyColor.card,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            content,
            if (actions != null) _createActions(actions!),
          ],
        ),
      ),
    );
  }

  Column _createActions(Widget actions) {
    return Column(
      children: [
        Divider(
          color: MyColor.divider,
          height: 24,
        ),
        actions,
      ],
    );
  }
}
