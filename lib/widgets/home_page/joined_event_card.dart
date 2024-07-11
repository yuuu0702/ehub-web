import 'package:ehub_web/color.dart';
import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/home_page/avatars.dart';
import 'package:ehub_web/widgets/home_page/schedule_date.dart';
import 'package:ehub_web/widgets/my_card.dart';
import 'package:ehub_web/widgets/my_text_button.dart';
import 'package:flutter/material.dart';

class JoinedEventCard extends StatelessWidget {
  const JoinedEventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ScheduleDate(),
          const SizedBox(height: 8),
          Text(
            'オーバーウォッチ２交流会',
            style: MyStyle.titleJp,
          ),
          const SizedBox(height: 8),
          const Avatars(),
          Divider(
            color: MyColor.divider,
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyTextButton(
                text: '参加を取り消す',
                onTap: () {},
                isJp: true,
              ),
              MyTextButton(
                text: '詳細',
                onTap: () {},
                isJp: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
