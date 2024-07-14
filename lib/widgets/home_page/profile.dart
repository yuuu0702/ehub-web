import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/my_avatar.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MyAvatar(
          imageUrl:
              'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('yudai.watanabe', style: MyStyle.captionJp),
            Text(
              '北國FHD システム部開発グループ',
              style: MyStyle.subTextJp,
            ),
          ],
        ),
      ],
    );
  }
}
