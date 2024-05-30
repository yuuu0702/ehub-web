import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  const MyAvatar({
    super.key,
    required this.imageUrl,
    this.isSmall = false,
  });

  final String imageUrl;
  final bool isSmall;

  double get size => isSmall ? 28 : 32;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
      ),
      child: CircleAvatar(
        radius: 50,
        backgroundImage: NetworkImage(
          imageUrl,
        ),
      ),
    );
  }
}
