import 'package:ehub_web/widgets/home_page/event_area.dart';
import 'package:ehub_web/widgets/home_page/header.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, required this.uid});

  final String uid;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(uid: uid),
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
