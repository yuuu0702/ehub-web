import 'dart:typed_data';

import 'package:ehub_web/widgets/my_filled_button.dart';
import 'package:ehub_web/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker_web/image_picker_web.dart';

class CreateProfilePage extends StatefulWidget {
  const CreateProfilePage({super.key});

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  Uint8List? _userImage;

  @override
  Widget build(BuildContext context) {
    var email = '';
    var password = '';

    Future<void> pickImage() async {
      _userImage = await ImagePickerWeb.getImageAsBytes();
      if (_userImage != null) {
        setState(() {});
      }
    }

    return Scaffold(
      backgroundColor: const Color(0xFF15212B),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                Column(
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
                const SizedBox(width: 36),
                Column(
                  children: [
                    SizedBox(
                      width: 320,
                      child: MyTextFormField(
                        labelText: 'Name',
                        onChanged: (String value) {
                          email = value;
                        },
                      ),
                    ),
                    const SizedBox(height: 36),
                    SizedBox(
                      width: 320,
                      child: MyTextFormField(
                        labelText: '所属部署',
                        onChanged: (String value) {
                          email = value;
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 36),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.computer,
                  size: 48,
                ),
                FaIcon(
                  FontAwesomeIcons.playstation,
                  size: 48,
                ),
              ],
            ),
            SizedBox(
              width: 320,
              child: MyTextFormField(
                labelText: 'Name',
                onChanged: (String value) {
                  email = value;
                },
              ),
            ),
            const SizedBox(height: 36),
            SizedBox(
              width: 320,
              child: MyTextFormField(
                labelText: '所属部署',
                onChanged: (String value) {
                  password = value;
                },
              ),
            ),
            const SizedBox(height: 24),
            MyFilledButton(
              text: 'Login',
              width: 160,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
