import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food/ui/screens/root_tabs/root_route.dart';
import 'package:food/ui/screens/splash_screen/splash_screen.dart';

class RootPage extends StatefulWidget {
  const RootPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  bool isLoaded = false;
  late Timer timer;
  @override
  void initState() {
    timer = Timer(
      const Duration(seconds: 3),
      () => setState(() => isLoaded = true),
    );
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isLoaded) {
      return const RootRoute();
    } else {
      return const SplashScreen();
    }
  }
}
