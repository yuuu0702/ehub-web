import 'package:ehub_web/provider/userdata_provider.dart';
import 'package:ehub_web/widgets/common/my_filled_button.dart';
import 'package:ehub_web/widgets/common/my_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var email = '';
    var password = '';

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
            MyTextFormField(
              labelText: 'E-mail',
              onChanged: (String value) {
                email = value;
              },
            ),
            const SizedBox(height: 36),
            MyTextFormField(
              labelText: 'Password',
              onChanged: (String value) {
                password = value;
              },
            ),
            const SizedBox(height: 24),
            MyFilledButton(
              text: 'Login',
              width: 160,
              height: 40,
              onTap: () async {
                try {
                  // メール・パスワードでログインしUIDを取得
                  UserData.signIn(email, password);

                  // ユーザープロフィールが設定されていたらホームページへ遷移
                  final route = await UserData.isProfileSet()
                      ? '/home'
                      : '/create-profile';
                  if (context.mounted) context.go(route);
                } catch (e) {
                  print('ログインに失敗しました：${e.toString()}');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
