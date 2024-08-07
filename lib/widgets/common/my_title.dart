import 'package:ehub_web/style.dart';
import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: MyStyle.title,
      ),
    );
  }
}
