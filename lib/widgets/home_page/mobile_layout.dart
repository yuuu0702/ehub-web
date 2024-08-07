import 'package:ehub_web/widgets/home_page/event_area.dart';
import 'package:ehub_web/widgets/home_page/header.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

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
