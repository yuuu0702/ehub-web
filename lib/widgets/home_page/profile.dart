import 'package:ehub_web/provider/userdata_provider.dart';
import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/my_avatar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Profile extends ConsumerStatefulWidget {
  const Profile({
    super.key,
  });

  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends ConsumerState<Profile> {
  Map<String, dynamic>? userDataProfile;

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

  Future<void> _getUserData() async {
    final uid = ref.read(UserData.currentUserData)?.uid;
    if (uid != null) {
      userDataProfile = await UserData.getProfile(uid);
      if (userDataProfile == null) {
        UserData.signOut();
      }
    }
  }

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
            Text(userDataProfile?['name'], style: MyStyle.captionJp),
            Text(
              userDataProfile?['department'],
              style: MyStyle.subTextJp,
            ),
          ],
        ),
      ],
    );
  }
}
