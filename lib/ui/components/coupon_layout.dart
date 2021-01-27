import 'package:flutter/material.dart';

class CouponLayout extends StatelessWidget {
  final String imageUrl;

  CouponLayout({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 180,
      child: Image.asset(imageUrl),
    );
  }
}
