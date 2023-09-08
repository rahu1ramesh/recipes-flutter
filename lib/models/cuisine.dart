import 'package:cookbook/models/recipe.dart';

class Cuisine {
  final String name;
  final List<dynamic> colors;
  final List<Recipe> recipes;

  const Cuisine({
    required this.name,
    required this.colors,
    required this.recipes,
  });

  factory Cuisine.fromJson(Map<String, dynamic> json) {
    return Cuisine(
      name: json['name'] as String,
      colors: json['colors'] as List<dynamic>,
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e))
          .toList(),
    );
  }
}
