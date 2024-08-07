import 'package:ehub_web/color.dart';
import 'package:ehub_web/widgets/home_page/desktop_layout.dart';
import 'package:ehub_web/widgets/home_page/mobile_layout.dart';
import 'package:ehub_web/widgets/home_page/tablet_layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyColor.background,
      body: _layout(width),
    );
  }

  Widget _layout(double width) {
    if (width > 1280) {
      return DesktopLayout();
    } else if (width > 780) {
      return TabletLayout();
    } else {
      return MobileLayout();
    }
  }
}
