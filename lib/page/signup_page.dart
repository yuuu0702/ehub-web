import 'package:ehub_web/widgets/common/my_filled_button.dart';
import 'package:ehub_web/widgets/common/my_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              text: 'SignUp',
              width: 160,
              onTap: () async {
                try {
                  // メール/パスワードでユーザー登録
                  final FirebaseAuth auth = FirebaseAuth.instance;
                  final result = await auth.createUserWithEmailAndPassword(
                    email: email,
                    password: password,
                  );

                  context.go('/create_profile');

                  print('アカウント作成に成功しました：${result.toString()}');
                } catch (e) {
                  print('アカウント作成に失敗しました：${e.toString()}');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
