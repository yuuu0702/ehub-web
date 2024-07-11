import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/my_card.dart';
import 'package:ehub_web/widgets/common/my_icon_button.dart';
import 'package:ehub_web/widgets/common/my_text_button.dart';
import 'package:ehub_web/widgets/home_page/avatars.dart';
import 'package:ehub_web/widgets/home_page/schedule_date.dart';
import 'package:flutter/material.dart';

class JoinedEventCard extends StatelessWidget {
  const JoinedEventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyCard(
      content: Column(
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
        ],
      ),
      actions: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextButton(
            text: '参加を取り消す',
            onTap: () {},
            isJp: true,
          ),
          MyIconButton(
            onTap: () {},
            iconData: Icons.more_horiz_rounded,
          ),
        ],
      ),
    );
  }
}
