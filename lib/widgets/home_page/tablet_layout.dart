import 'package:ehub_web/widgets/home_page/event_area.dart';
import 'package:ehub_web/widgets/home_page/header.dart';
import 'package:ehub_web/widgets/home_page/joined_event_area.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                JoinedEventArea(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: EventArea(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
