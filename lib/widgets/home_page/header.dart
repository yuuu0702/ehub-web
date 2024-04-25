import 'package:ehub_web/style.dart';
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
      height: 100,
      child: Row(
        children: [
          SizedBox(width: 32),
          SizedBox(
            height: 32,
            child: Image.asset('assets/images/ehub_logo.png'),
          ),
          SizedBox(width: 32),
          Text(
            '北國FHD e-sports',
            style: GoogleFonts.sarpanch(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          // プロフィールエリア
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 32.0,
                    height: 32.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg',
                      ),
                    ),
                  ),
                  Column(
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
            ],
          ),
          SizedBox(width: 32),
        ],
      ),
    );
  }
}
