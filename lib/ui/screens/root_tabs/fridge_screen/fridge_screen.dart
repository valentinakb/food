import 'package:flutter/material.dart';
import 'package:food/config/brand_text_style.dart';

class FridgeScreen extends StatelessWidget {
  const FridgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Fridge',
        style: BrandTextStyles.h1,
      )),
    );
  }
}
