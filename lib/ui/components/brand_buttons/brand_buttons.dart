import 'package:flutter/material.dart';
import 'package:food/config/brand_colors.dart';
import 'package:food/config/brand_text_style.dart';

class BrandButtons {
  static Widget textButton({
    required String text,
    required VoidCallback onTap,
    required Color backgroundColor,
    required Color textColor,
    required Color borderColor,
  }) =>
      _TextButton(
        text: text,
        onTap: onTap,
        backgroundColor: backgroundColor,
        textColor: textColor,
        borderColor: borderColor,
      );
}

class _TextButton extends StatelessWidget {
  const _TextButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: 48,
        width: 232,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: backgroundColor ?? BrandColors.white,
            border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: 3,
            )),
        child: Text(
          text,
          style: BrandTextStyles.button
              .copyWith(color: textColor ?? BrandColors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
