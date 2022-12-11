import 'package:flutter/material.dart';
import 'package:food/config/brand_colors.dart';

import 'ui/screens/root_page/root_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Otus Food',
      theme: ThemeData(scaffoldBackgroundColor: BrandColors.grey),
      home: const RootPage(),
    );
  }
}
