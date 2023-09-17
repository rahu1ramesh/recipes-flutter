import 'package:cookbook/models/cuisine.dart';
import 'package:cookbook/widgets/recipe_tile.dart';
import 'package:flutter/material.dart';

class CuisineScreen extends StatelessWidget {
  const CuisineScreen({super.key, required this.cuisine});
  final Cuisine cuisine;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cuisine.name),
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 36,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 20),
        itemCount: cuisine.recipes.length,
        itemBuilder: (context, index) {
          final recipe = cuisine.recipes[index];
          return RecipeTile(recipe: recipe);
        },
      ),
    );
  }
}
