import 'package:ehub_web/widgets/my_filled_button.dart';
import 'package:ehub_web/widgets/my_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            const MyTextFormField(labelText: 'E-mail'),
            const SizedBox(height: 36),
            const MyTextFormField(labelText: 'Password'),
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
