import 'package:ehub_web/widgets/my_filled_button.dart';
import 'package:ehub_web/widgets/my_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
            MyFilledButton(
              text: 'Login',
              width: 160,
              onTap: () async {
                try {
                  final FirebaseAuth auth = FirebaseAuth.instance;
                  final result = await auth.signInWithEmailAndPassword(
                    email: email,
                    password: password,
                  );

                  print('ログインに成功しました：${result.toString()}');
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
