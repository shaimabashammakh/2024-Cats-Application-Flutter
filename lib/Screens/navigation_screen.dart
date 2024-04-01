import 'package:flutter/material.dart';
import 'package:cats_application/Screens/add_cat_data.dart';
import 'package:cats_application/Screens/home_screen.dart';
import 'package:cats_application/Screens/favorite_cats.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  List screens = [
    const HomeScreen(),
    const FavoriteCatsScreen(),
    const AddCatData()
  ];
  int currentIndexInt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndexInt],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndexInt,
        onTap: (value) {
          currentIndexInt = value;
          setState(() {});
        },
        backgroundColor: const Color.fromARGB(255, 58, 183, 177),
        //List: index 0, 1, 2
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
        ],
      ),
    );
  }
}
