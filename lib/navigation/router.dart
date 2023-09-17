import 'package:cookbook/screens/home.dart';
import 'package:cookbook/screens/qoutes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'quotes',
          builder: (BuildContext context, GoRouterState state) {
            return const QuotesScreen();
          },
        ),
      ],
    ),
  ],
);
