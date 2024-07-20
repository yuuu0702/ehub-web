import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/home_page/profile.dart';
import 'package:flutter/material.dart';

class ProfileWithMiniLevel extends StatelessWidget {
  const ProfileWithMiniLevel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('12', style: MyStyle.level),
        const SizedBox(width: 8),
        const Profile(),
      ],
    );
  }
}
