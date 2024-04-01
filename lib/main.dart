import 'package:flutter/material.dart';
import 'package:cats_application/data/all_cats.dart';
import 'model/cat.dart';
import 'package:cats_application/Screens/navigation_screen.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();

// List of favorite cats
List<Cat> favoriteCats = [];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationScreen(),
    );
  }
}
