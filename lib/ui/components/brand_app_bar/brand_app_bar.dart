import 'package:flutter/material.dart';
import 'package:food/config/brand_colors.dart';
import 'package:food/config/brand_text_style.dart';

class BrandAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BrandAppBar({
    super.key,
    required this.title,
    this.backButtonIcon,
    this.megafon,
    this.onTap,
  });

  final String title;
  final IconData? backButtonIcon;
  final IconData? megafon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: BrandColors.white,
        boxShadow: [
          BoxShadow(
            color: BrandColors.black.withOpacity(0.1),
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(top: 30),
        height: kToolbarHeight,
        child: Row(
          children: [
            SizedBox(
              child: GestureDetector(
                onTap: onTap,
                child: Icon(backButtonIcon, size: 24),
              ),
            ),
            Spacer(),
            Text(
              title,
              style: BrandTextStyles.h3.copyWith(
                color: BrandColors.darkGreen,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: onTap,
              child: SizedBox(
                child: Icon(megafon, size: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
