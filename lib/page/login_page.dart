import 'package:ehub_web/widgets/my_filled_button.dart';
import 'package:ehub_web/widgets/my_text_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            MyFilledButton(
              text: 'Login',
              width: 160,
              onTap: () {
                context.push('/home');
              },
            ),
            const SizedBox(height: 24),
            MyTextButton(
              text: 'SingUp',
              width: 160,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
