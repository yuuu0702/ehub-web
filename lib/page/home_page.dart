import 'package:ehub_web/color.dart';
import 'package:ehub_web/page/recent_user_area.dart';
import 'package:ehub_web/widgets/home_page/event_area.dart';
import 'package:ehub_web/widgets/home_page/header.dart';
import 'package:ehub_web/widgets/home_page/joined_event_area.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.background,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
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
