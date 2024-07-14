import 'package:ehub_web/widgets/common/my_icon_button.dart';
import 'package:ehub_web/widgets/common/my_title.dart';
import 'package:ehub_web/widgets/home_page/event_card.dart';
import 'package:flutter/material.dart';

class EventArea extends StatelessWidget {
  const EventArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 482,
        height: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MyTitle(text: 'Events'),
                MyIconButton(
                  iconData: Icons.history,
                  onTap: () {},
                ),
              ],
            ),
            const EventCard(),
          ],
        ),
      ),
    );
  }
}
