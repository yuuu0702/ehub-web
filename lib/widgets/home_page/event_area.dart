import 'package:ehub_web/widgets/my_title.dart';
import 'package:flutter/material.dart';

class EventArea extends StatelessWidget {
  const EventArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyTitle(text: 'Events'),
      ],
    );
  }
}
