import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/my_selector_base.dart';
import 'package:flutter/material.dart';

class MyTimeSelector extends StatelessWidget {
  const MyTimeSelector({
    super.key,
    this.labelText,
    required this.onChanged,
  });

  final String? labelText;
  final void Function(String) onChanged;

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
        MySelectorBase(
          iconData: Icons.access_time,
          text: '21:00 - 23:00',
          textWidth: 110,
          onTap: () {},
        ),
      ],
    );
  }
}
