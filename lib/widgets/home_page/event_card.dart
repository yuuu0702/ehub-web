import 'package:ehub_web/color.dart';
import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/my_card.dart';
import 'package:ehub_web/widgets/common/my_filled_button.dart';
import 'package:ehub_web/widgets/common/my_outlined_button.dart';
import 'package:ehub_web/widgets/common/my_text_button.dart';
import 'package:ehub_web/widgets/home_page/avatars.dart';
import 'package:ehub_web/widgets/home_page/profile.dart';
import 'package:ehub_web/widgets/home_page/schedule_date.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyCard(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ScheduleDate(),
                  const SizedBox(height: 8),
                  Text(
                    'オーバーウォッチ２交流会',
                    style: MyStyle.titleJp,
                  ),
                ],
              ),
              Container(
                width: 118,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(2),
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'オーバーウォッチ２交流会を行います。初心者大歓迎です！\nみんなでわいわいやりましょう。奮ってご参加ください。',
            style: MyStyle.textJp,
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Expanded(child: Profile()),
              SizedBox(
                width: 80,
                child: Avatars(),
              ),
            ],
          ),
        ],
      ),
      actions: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTextButton(
            onTap: () {},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.close,
                  color: MyColor.foreground,
                ),
                const SizedBox(width: 4),
                Text('拒否', style: MyStyle.buttonJp),
              ],
            ),
          ),
          const Spacer(),
          MyOutlinedColor(
            onTap: () {},
            text: '興味あり',
            isJp: true,
          ),
          const SizedBox(width: 16),
          Column(
            children: [
              MyFilledButton(
                onTap: () {},
                text: '参加する',
                isJp: true,
              ),
              Text(
                '+50 exp',
                style: MyStyle.subText.copyWith(
                  color: MyColor.level,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
