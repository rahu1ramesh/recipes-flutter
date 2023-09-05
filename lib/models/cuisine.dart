import 'package:cookbook/models/recipe.dart';

class Cuisine {
  final String name;
  final List<String> colors;
  final Recipe recipes;

  Cuisine(this.name, this.colors, this.recipes);
}
