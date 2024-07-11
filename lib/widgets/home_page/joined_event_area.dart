import 'package:ehub_web/widgets/home_page/joined_event_card.dart';
import 'package:ehub_web/widgets/my_title.dart';
import 'package:flutter/material.dart';

class JoinedEventArea extends StatelessWidget {
  const JoinedEventArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 352,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTitle(text: 'Joined Events'),
          JoinedEventCard(),
        ],
      ),
    );
  }
}
