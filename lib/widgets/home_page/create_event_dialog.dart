import 'package:ehub_web/color.dart';
import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/my_date_input_field.dart';
import 'package:ehub_web/widgets/common/my_text_form_field.dart';
import 'package:flutter/material.dart';

class CreateEventDialog extends StatelessWidget {
  const CreateEventDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('イベント作成'),
      titleTextStyle: MyStyle.titleJp,
      backgroundColor: MyColor.background,
      contentPadding: const EdgeInsets.all(24),
      children: [
        const SizedBox(width: 640),
        MyDateInputField(
          labelText: '日付',
          onChanged: (value) {},
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
        MyTextFormField(
          labelText: 'ゲーム',
          onChanged: (value) {},
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
