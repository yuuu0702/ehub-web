import 'dart:typed_data';

import 'package:ehub_web/provider/userdata_provider.dart';
import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/common/my_filled_button.dart';
import 'package:ehub_web/widgets/common/my_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker_web/image_picker_web.dart';

class CreateProfilePage extends ConsumerStatefulWidget {
  const CreateProfilePage({super.key});

  @override
  ConsumerState<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends ConsumerState<CreateProfilePage> {
  Uint8List? _userImage;
  var platformPc = false;
  var platformPlayStation = false;
  var platformSwitch = false;
  var platformMobile = false;

  var userName = '';
  var department = '';
  var introduction = '';

  @override
  Widget build(BuildContext context) {
    Future<void> pickImage() async {
      _userImage = await ImagePickerWeb.getImageAsBytes();
      if (_userImage != null) {
        setState(() {});
      }
    }

    return Scaffold(
      backgroundColor: const Color(0xFF15212B),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 130,
                  child: Image.asset('assets/images/ehub_logo.png'),
                ),
                const SizedBox(height: 36),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Column(
                        children: [
                          _userImage == null
                              ? const CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
                                  ),
                                )
                              : CircleAvatar(
                                  radius: 50,
                                  backgroundImage: MemoryImage(_userImage!),
                                ),
                          ElevatedButton(
                            onPressed: pickImage,
                            child: const Text('画像を選択'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 36),
                    Expanded(
                      child: Column(
                        children: [
                          MyTextFormField(
                            labelText: 'Name',
                            onChanged: (String value) {
                              userName = value;
                              print('userName: $userName');
                            },
                          ),
                          const SizedBox(height: 36),
                          SizedBox(
                            width: 1000,
                            child: MyTextFormField(
                              labelText: '所属部署',
                              onChanged: (String value) {
                                department = value;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 36),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'プラットフォーム',
                      style: MyStyle.text,
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 40,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              platformPc = !platformPc;
                            });
                          },
                          child: FaIcon(
                            FontAwesomeIcons.computer,
                            color: platformPc
                                ? Colors.white
                                : const Color(0xFF2C3740),
                            size: 48,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              platformPlayStation = !platformPlayStation;
                            });
                          },
                          child: FaIcon(
                            FontAwesomeIcons.playstation,
                            color: platformPlayStation
                                ? Colors.white
                                : const Color(0xFF2C3740),
                            size: 48,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              platformSwitch = !platformSwitch;
                            });
                          },
                          child: SvgPicture.asset(
                            'svgs/nintendo_switch_icon_136357.svg',
                            height: 48,
                            width: 48,
                            color: platformSwitch
                                ? Colors.white
                                : const Color(0xFF2C3740),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              platformMobile = !platformMobile;
                            });
                          },
                          child: FaIcon(
                            FontAwesomeIcons.mobile,
                            color: platformMobile
                                ? Colors.white
                                : const Color(0xFF2C3740),
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 36),
                SizedBox(
                  width: 320,
                  child: MyTextFormField(
                    maxLines: 3,
                    labelText: '紹介文',
                    onChanged: (String value) {
                      introduction = value;
                    },
                  ),
                ),
                const SizedBox(height: 24),
                MyFilledButton(
                  text: 'Create',
                  width: 160,
                  onTap: () async {
                    //TODO: リファクタする
                    final uid = ref.read(UserData.currentUserData)?.uid;

                    // 画像をFirebase Storageに保存
                    final photoData =
                        await UserData.uploadImageToFirebaseStorage(
                            _userImage!, uid!);

                    // プロフィール情報をFirestoreに保存
                    await UserData.setProfile(uid, {
                      'name': userName,
                      'department': department,
                      'introduction': introduction,
                      'platform_pc': platformPc,
                      'platform_playstation': platformPlayStation,
                      'platform_switch': platformSwitch,
                      'platform_mobile': platformMobile,
                      'photo_url': photoData['photoURL'],
                      'photo_path': photoData['path'],
                    });
                    context.go('/home');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
