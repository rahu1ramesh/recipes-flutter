import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/cuisine.dart';

class CuisineTile extends StatelessWidget {
  final List<Color> gradientColors;
  final Cuisine cuisine;

  const CuisineTile({
    super.key,
    required this.gradientColors,
    required this.cuisine,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go('/cuisine', extra: cuisine),
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              cuisine.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
