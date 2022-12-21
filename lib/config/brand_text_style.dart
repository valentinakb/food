import 'package:flutter/material.dart';
import 'package:food/config/brand_colors.dart';
import 'package:food/utils/named_font_weight.dart';

const roboto = 'Roboto';

class BrandTextStyles {
  static const defaultText = TextStyle(
    fontFamily: roboto,
    fontSize: 16,
    fontWeight: NamedWeight.regular,
    height: 23 / 16,
    letterSpacing: 0,
    color: BrandColors.black,
  );
  static final h1 = defaultText.copyWith(
    fontFamily: roboto,
    fontSize: 24,
    height: 22 / 24,
    fontWeight: NamedWeight.medium,
  );
  static final h2 = defaultText.copyWith(
    fontFamily: roboto,
    fontSize: 22,
    height: 22 / 24,
    fontWeight: NamedWeight.medium,
  );
  static final h3 = defaultText.copyWith(
    fontFamily: roboto,
    fontSize: 20,
    height: 23 / 20,
    fontWeight: NamedWeight.regular,
  );
  static final medium = defaultText.copyWith(
    fontFamily: roboto,
    fontSize: 20,
    height: 23 / 20,
    fontWeight: NamedWeight.medium,
  );
  static final mediumRegular = defaultText.copyWith(
    fontFamily: roboto,
    fontSize: 14,
    height: 27 / 14,
    fontWeight: NamedWeight.medium,
  );
  static final smallRegular = defaultText.copyWith(
    fontFamily: roboto,
    fontSize: 13,
    height: 27 / 14,
    fontWeight: NamedWeight.regular,
  );
  static final button = defaultText.copyWith(
    fontFamily: roboto,
    fontSize: 16,
    height: 23 / 16,
    fontWeight: NamedWeight.medium,
  );
  static final smallDetails = defaultText.copyWith(
    fontFamily: roboto,
    fontSize: 12,
    height: 18 / 12,
    fontWeight: NamedWeight.regular,
  );
  static final smallDetailsBold = defaultText.copyWith(
    fontFamily: roboto,
    fontSize: 13,
    height: 20 / 13,
    fontWeight: NamedWeight.bold,
  );
  static final navBar = defaultText.copyWith(
    fontFamily: roboto,
    fontSize: 10,
    height: 23 / 10,
    fontWeight: NamedWeight.bold,
  );
}
