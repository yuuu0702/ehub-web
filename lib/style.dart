import 'package:ehub_web/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class MyStyle {
  static const _enFont = GoogleFonts.sarpanch;
  static const _jpFont = GoogleFonts.mPlus1p;

  // テキスト系 (英字)
  static final title = _enFont(
    color: MyColor.foreground,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final text = _enFont(
    color: MyColor.foreground,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static final subText = _enFont(
    color: MyColor.foreground,
    fontSize: 11,
    fontWeight: FontWeight.bold,
  );

  // テキスト系 (日本語)
  static final titleJp = _jpFont(
    color: MyColor.foreground,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static final name = _jpFont(
    color: MyColor.foreground,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static final textJp = _jpFont(
    color: MyColor.foreground,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static final subTextJp = _jpFont(
    color: MyColor.foregroundSub,
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );

  // コンポーネント系
  static final button = _enFont(
    color: MyColor.foreground,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.1,
  );

  static final buttonJp = _jpFont(
    color: MyColor.foreground,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.1,
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
