import 'package:flutter/material.dart';
import 'package:food/config/brand_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Profile',
        style: BrandTextStyles.h1,
      )),
    );
  }
}
