import 'package:ehub_web/color.dart';
import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/home_page/avatars.dart';
import 'package:ehub_web/widgets/home_page/schedule_date.dart';
import 'package:ehub_web/widgets/my_text_button.dart';
import 'package:flutter/material.dart';

class JoinedEventArea extends StatelessWidget {
  const JoinedEventArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 352,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              'Joined Event',
              style: MyStyle.title,
            ),
          ),
          Ink(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: MyColor.card,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
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
            ),
          ),
        ],
      ),
    );
  }
}
