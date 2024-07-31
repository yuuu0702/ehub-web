import 'package:ehub_web/style.dart';
import 'package:flutter/material.dart';

class LabeledInput extends StatelessWidget {
  const LabeledInput({super.key, required this.labelText, required this.child});

  final String? labelText;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelText != null
            ? Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(labelText!, style: MyStyle.captionJp),
              )
            : const SizedBox(),
        child,
      ],
    );
  }
}
