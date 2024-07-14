import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ehub_web/widgets/common/my_filled_button.dart';
import 'package:ehub_web/widgets/common/my_text_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        var userdata = FirebaseFirestore.instance
            .collection('users')
            .doc(snapshot.data?.uid);

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        // ログイン済みの場合はホームページへ遷移
        if (snapshot.hasData) {
          // uidと一致しているデータがあるか確認
          userdata.get().then((doc) {
            if (doc.exists) {
              print('ユーザーデータが存在します');
              context.go('/home', extra: snapshot.data!.uid);
            } else {
              print('ユーザーデータが存在しません');
              context.go('/create-profile', extra: snapshot.data!.uid);
            }
          });
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
                MyFilledButton(
                  text: 'Login',
                  width: 160,
                  height: 40,
                  onTap: () {
                    context.push('/login');
                  },
                ),
                const SizedBox(height: 24),
                MyTextButton(
                  text: 'SingUp',
                  width: 160,
                  height: 40,
                  onTap: () {
                    context.push('/signup');
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
