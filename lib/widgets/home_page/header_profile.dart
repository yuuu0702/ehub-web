import 'package:ehub_web/widgets/home_page/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Profile(),
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
    );
  }
}
