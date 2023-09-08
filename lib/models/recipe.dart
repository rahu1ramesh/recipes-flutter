class Recipe {
  final String name;
  final List<dynamic> ingredients;
  final String instructions;

  const Recipe({
    required this.name,
    required this.ingredients,
    required this.instructions,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      name: json['name'] as String,
      ingredients: json['ingredients'] as List<dynamic>,
      instructions: json['instructions'] as String,
    );
  }
}
