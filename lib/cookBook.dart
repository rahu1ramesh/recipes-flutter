import 'navigation/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CookBookApp extends StatelessWidget {
  const CookBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "CookBook",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
        textTheme: TextTheme(
          titleLarge: GoogleFonts.bitter(
            fontSize: 28,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: GoogleFonts.bitter(
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
