import 'package:flutter/material.dart';
import 'package:untitled12/screens/home_screen.dart';
import 'package:untitled12/screens/meal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "mealScreen":(context)=>MealScreen(),
      },
      home: HomeScreen(),
    );
  }
}

