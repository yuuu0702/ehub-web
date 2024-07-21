import 'package:ehub_web/provider/userdata_provider.dart';
import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/my_avatar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Profile extends ConsumerStatefulWidget {
  const Profile({
    super.key,
  });

  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends ConsumerState<Profile> {
  Map<String, dynamic>? userDataProfile;
  bool _loading = true;

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
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: _loading,
      child: Row(
        children: [
          MyAvatar(
            imageUrl: userDataProfile?['photo_url'] ?? '',
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userDataProfile?['name'] ?? '', style: MyStyle.captionJp),
              Text(
                userDataProfile?['department'] ?? '',
                style: MyStyle.subTextJp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
