// ignore_for_file: prefer_const_constructors

import 'package:flutter/widgets.dart';
import 'package:food/config/brand_colors.dart';

final brandCardDecoration = BoxDecoration(
    color: BrandColors.white,
    borderRadius: BorderRadius.circular(5),
    boxShadow: [
      BoxShadow(
          color: BrandColors.shadowColor10,
          offset: const Offset(0, 4),
          blurRadius: 4,
          spreadRadius: 2),
    ]);
final brandIngrediensCardDecoration = BoxDecoration(
  color: BrandColors.white,
  borderRadius: BorderRadius.circular(5),
  border: Border.all(width: 3, color: BrandColors.darkGrey),
);

final paddingH16 = EdgeInsets.symmetric(horizontal: 16);
