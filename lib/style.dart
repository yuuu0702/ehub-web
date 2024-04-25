import 'package:ehub_web/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStyle {
  static const _enFont = GoogleFonts.sarpanch;
  static const _jpFont = GoogleFonts.mPlus1p;

  static final title = _enFont(
    color: MyColor.foreground,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final button = _enFont(
    color: MyColor.foreground,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.25,
  );

  /// テキストフィールドのキャプション(英字)
  static final caption = _enFont(
    color: MyColor.foreground,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  /// テキストフィールドのキャプション(日本語)
  static final captionJp = _jpFont(
    color: MyColor.foreground,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}
