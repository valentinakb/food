import 'package:flutter/material.dart';
import 'package:food/config/brand_colors.dart';
import 'package:food/config/brand_text_style.dart';
import 'package:food/ui/components/food_icons/food_icons_icons.dart';

const _kBottomTabBarHeight = 64;

class BrandNavigationBar extends StatelessWidget {
  const BrandNavigationBar({
    Key? key,
    required this.change,
    required this.currentTap,
  }) : super(key: key);

  final TabsType currentTap;
  final ValueChanged<TabsType> change;

  @override
  Widget build(BuildContext context) {
    final paddingBottom = MediaQuery.of(context).padding.bottom;

    return SizedBox(
      height: paddingBottom + _kBottomTabBarHeight,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: BrandColors.white,
          boxShadow: [
            BoxShadow(
                color: BrandColors.black.withOpacity(0.25),
                offset: Offset(0, 0),
                blurRadius: 8),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _NavButton(
              icon: FoodIcons.local_pizza,
              onTap: () => change(TabsType.recipe),
              title: 'Рецепты',
              isActive: currentTap == TabsType.recipe,
            ),
            _NavButton(
              icon: FoodIcons.kitchen,
              onTap: () => change(TabsType.fridge),
              title: 'Холодильник',
              isActive: currentTap == TabsType.fridge,
            ),
            _NavButton(
              icon: FoodIcons.favorite,
              onTap: () => change(TabsType.favorite),
              title: 'Избранное',
              isActive: currentTap == TabsType.favorite,
            ),
            _NavButton(
              icon: FoodIcons.person,
              onTap: () => change(TabsType.profile),
              title: 'Профиль',
              isActive: currentTap == TabsType.profile,
            ),
          ],
        ),
      ),
    );
  }
}

enum TabsType {
  recipe,
  fridge,
  favorite,
  profile,
}

class _NavButton extends StatelessWidget {
  const _NavButton({
    Key? key,
    required this.onTap,
    required this.title,
    required this.isActive,
    required this.icon,
  }) : super(key: key);

  final VoidCallback onTap;
  final String title;
  final bool isActive;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final color = isActive ? BrandColors.lightGreen : BrandColors.lightGrey;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: isActive ? null : onTap,
      child: Column(
        children: [
          SizedBox(height: 13),
          Icon(icon, size: 24, color: color),
          Text(
            title,
            style: BrandTextStyles.navBar.copyWith(
              color: color,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
