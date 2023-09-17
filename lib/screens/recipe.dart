import 'package:cookbook/models/recipe.dart';
import 'package:flutter/material.dart';

import '../widgets.dart/ingredients.dart';
import '../widgets.dart/instructions.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(recipe.name),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.restaurant_menu),
                text: 'Ingredients',
              ),
              Tab(
                icon: Icon(Icons.ramen_dining_rounded),
                text: 'Instructions',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Ingredients(ingredients: recipe.ingredients),
            Instructions(instructions: recipe.instructions),
          ],
        ),
      ),
    );
  }
}
