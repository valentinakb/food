import 'package:flutter/material.dart';
import 'package:food/config/brand_colors.dart';
import 'package:food/ui/components/brand_navigation_bar/brand_navigation_bar.dart';
import 'package:food/ui/screens/root_tabs/favorite_screen/favorite_screen.dart';
import 'package:food/ui/screens/root_tabs/fridge_screen/fridge_screen.dart';
import 'package:food/ui/screens/root_tabs/profile_screen/profile_screen.dart';
import 'package:food/ui/screens/root_tabs/recipe_screen/recipe_screen.dart';

class RootRoute extends StatefulWidget {
  const RootRoute({super.key});

  @override
  State<RootRoute> createState() => _RootRouteState();
}

class _RootRouteState extends State<RootRoute>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrandColors.grey,
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          RecipeScreen(),
          FridgeScreen(),
          FavoriteScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BrandNavigationBar(
          change: (value) {
            setState(() {});
            tabController.animateTo(value);
          },
          currentIndex: tabController.index),
    );
  }
}
