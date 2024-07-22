import 'package:ehub_web/widgets/common/my_filled_button.dart';
import 'package:ehub_web/widgets/home_page/create_event_dialog.dart';
import 'package:ehub_web/widgets/home_page/header_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 110,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            SizedBox(
              height: 32,
              child: Image.asset('assets/images/ehub_logo.png'),
            ),
            const SizedBox(width: 32),
            Text(
              '北國FHD e-sports',
              style: GoogleFonts.sarpanch(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 32),
            MyFilledButton(
              text: 'イベント作成',
              isJp: true,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return const CreateEventDialog();
                  },
                );
              },
            ),
            const Spacer(),
            // プロフィールエリア
            const HeaderProfile(),
            // ログアウトボタン
            TextButton(
              onPressed: () {
                // ログアウト処理
                FirebaseAuth.instance.signOut();
                // first_pageへ遷移
                context.go('/');
              },
              child: Text(
                'ログアウト',
                style: GoogleFonts.sarpanch(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
