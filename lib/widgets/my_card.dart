import 'package:ehub_web/color.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.child});

  final Widget child;

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
        child: child,
      ),
    );
  }
}
