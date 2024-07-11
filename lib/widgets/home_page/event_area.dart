import 'package:ehub_web/color.dart';
import 'package:ehub_web/widgets/home_page/event_card.dart';
import 'package:ehub_web/widgets/my_title.dart';
import 'package:flutter/material.dart';

class EventArea extends StatelessWidget {
  const EventArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 482,
        height: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyTitle(text: 'Events'),
                Icon(Icons.history, size: 24, color: MyColor.foreground),
              ],
            ),
            EventCard(),
          ],
        ),
      ),
    );
  }
}
