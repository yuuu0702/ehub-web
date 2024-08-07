import 'package:ehub_web/widgets/common/my_date_selector.dart';
import 'package:ehub_web/widgets/common/my_dialog.dart';
import 'package:ehub_web/widgets/common/my_text_form_field.dart';
import 'package:ehub_web/widgets/common/my_time_selector.dart';
import 'package:ehub_web/widgets/common/platform_selector.dart';
import 'package:ehub_web/widgets/home_page/my_dropdown_menu.dart';
import 'package:flutter/material.dart';

final List<String> _gameSamples = [
  'League of Legends',
  'Overwatch 2',
  'Street Fighter 6',
  'VALORANT',
];

class CreateEventDialog extends StatelessWidget {
  const CreateEventDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyDialog(
      title: 'イベント作成',
      children: [
        const SizedBox(width: 640),
        Row(
          children: [
            MyDateSelector(
              labelText: '日付',
              onChanged: (value) {},
            ),
            const SizedBox(width: 24),
            MyTimeSelector(
              labelText: '時間',
              onChanged: (value) {},
            ),
          ],
        ),
        const SizedBox(height: 16),
        MyTextFormField(
          labelText: 'イベント名',
          onChanged: (value) {},
        ),
        const SizedBox(height: 16),
        MyTextFormField(
          labelText: 'メッセージ',
          onChanged: (value) {},
          maxLines: 3,
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyDropdownMenu(
              labelText: 'ゲーム',
              width: 300,
              menuEntries: _gameSamples,
            ),
            const SizedBox(width: 24),
            Expanded(
              child: GamePlatformSelector(
                labelText: 'プラットフォーム',
                size: 48,
                onChanged: (selected) {
                  print(selected);
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
