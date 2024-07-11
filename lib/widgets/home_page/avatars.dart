import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/my_avatar.dart';
import 'package:flutter/material.dart';

class Avatars extends StatelessWidget {
  const Avatars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Positioned(
                right: 32,
                child: MyAvatar(
                  imageUrl:
                      'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
                  isSmall: true,
                ),
              ),
              Positioned(
                right: 16,
                child: MyAvatar(
                  imageUrl:
                      'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
                  isSmall: true,
                ),
              ),
              MyAvatar(
                imageUrl:
                    'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
                isSmall: true,
              ),
            ],
          ),
        ),
        const SizedBox(width: 4),
        Text(
          '+7',
          style: MyStyle.subText,
        ),
      ],
    );
  }
}
