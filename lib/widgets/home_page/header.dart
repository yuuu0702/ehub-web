import 'package:ehub_web/style.dart';
import 'package:ehub_web/widgets/home_page/my_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
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
            Spacer(),
            // プロフィールエリア
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const MyAvatar(
                      imageUrl:
                          'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('yudai.watanabe', style: MyStyle.captionJp),
                        Text(
                          '北國FHD システム部開発グループ',
                          style: MyStyle.subTextJp,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Container(
                  height: 5,
                  width: 193,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF96FF65),
                      width: 1.0,
                    ),
                  ),
                ),
                Text(
                  'LEVEL 5',
                  style: GoogleFonts.sarpanch(
                      color: const Color(0xFF96FF65),
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
