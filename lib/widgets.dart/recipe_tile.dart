import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/recipe.dart';

class RecipeTile extends StatelessWidget {
  const RecipeTile({super.key, required this.recipe});

  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      child: Card(
        color: Colors.black,
        child: ListTile(
          onTap: () => context.goNamed('recipe', extra: recipe),
          leading: const Icon(Icons.restaurant, color: Colors.purple),
          title: Text(recipe.name),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}
