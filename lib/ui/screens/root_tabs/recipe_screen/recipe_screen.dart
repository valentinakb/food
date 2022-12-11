import 'package:flutter/material.dart';
import 'package:food/config/brand_colors.dart';
import 'package:food/config/brand_text_style.dart';
import 'package:food/config/brand_theme.dart';
import 'package:food/logic/models/recipe_short.dart';
import 'package:food/ui/components/brand_app_bar/brand_app_bar.dart';
import 'package:food/ui/components/food_icons/food_icons_icons.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BrandAppBar(title: 'Рецепты'),
      body: Padding(
        padding: paddingH16,
        child: ListView(
          children: [
            const SizedBox(height: 20),
            ...recipeShort
                .map((e) => _RecipyShortCard(
                      recipe: e,
                    ))
                .toList()
          ],
        ),
      ),
    );
  }
}

class _RecipyShortCard extends StatelessWidget {
  const _RecipyShortCard({
    required this.recipe,
  });

  final RecipeShort recipe;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: brandCardDecoration,
      child: Row(
        children: [
          SizedBox(
            height: 136,
            width: 149,
            child: Image.asset(recipe.image),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Text(
                  recipe.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: BrandTextStyles.h2,
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Icon(FoodIcons.access_time, size: 20),
                    const SizedBox(width: 11),
                    Text(
                      recipe.time,
                      style: BrandTextStyles.defaultText.copyWith(
                        height: 18 / 16,
                        color: BrandColors.lightGreen,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
