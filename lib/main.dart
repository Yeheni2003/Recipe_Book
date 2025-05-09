import 'package:flutter/material.dart';
import 'package:new_app/Pages/Splash_Screen.dart';
import 'Pages/RecipeListScreen.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        fontFamily: 'Poppins'
      ),
      home: const SplashScreen(),
    );
  }
}