import 'package:ehub_web/color.dart';
import 'package:ehub_web/page/recent_user_area.dart';
import 'package:ehub_web/widgets/home_page/event_area.dart';
import 'package:ehub_web/widgets/home_page/header.dart';
import 'package:ehub_web/widgets/home_page/joined_event_area.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage(this.uid, {super.key});

  final String uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.background,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: const Column(
            children: [
              Header(uid: uid),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      JoinedEventArea(),
                      Expanded(child: EventArea()),
                      RecentUserArea(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
