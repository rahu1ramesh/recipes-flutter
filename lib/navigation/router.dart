import 'package:cookbook/models/cuisine.dart';
import 'package:cookbook/screens/cuisine.dart';
import 'package:cookbook/screens/home.dart';
import 'package:cookbook/screens/qoutes.dart';
import 'package:cookbook/screens/recipe.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/recipe.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: 'home',
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
      routes: <RouteBase>[
        GoRoute(
          name: 'quotes',
          path: 'quotes',
          builder: (BuildContext context, GoRouterState state) {
            return const QuotesScreen();
          },
        ),
        GoRoute(
          name: 'cuisine',
          path: 'cuisine',
          builder: (BuildContext context, GoRouterState state) {
            final Cuisine cuisine = state.extra! as Cuisine;
            return CuisineScreen(cuisine: cuisine);
          },
        ),
        GoRoute(
          name: 'recipe',
          path: 'recipe',
          builder: (BuildContext context, GoRouterState state) {
            final Recipe recipe = state.extra! as Recipe;
            return RecipeScreen(recipe: recipe);
          },
        ),
      ],
    ),
  ],
);
