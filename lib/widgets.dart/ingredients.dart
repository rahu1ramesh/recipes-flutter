import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({super.key, required this.ingredients});

  final List<dynamic> ingredients;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var ingredient in ingredients)
            ListTile(
              leading: const Icon(Icons.restaurant_menu),
              title: Text(ingredient),
            ),
        ],
      ),
    );
  }
}
