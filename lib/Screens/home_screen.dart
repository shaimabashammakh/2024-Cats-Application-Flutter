import 'package:flutter/material.dart';
import 'package:cats_application/app_widgets/cat_card.dart';
import 'package:cats_application/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Cats'),
        backgroundColor: const Color.fromARGB(255, 58, 183, 177),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cats.length,
        itemBuilder: (context, index) {
          final cat = cats[index];
          return CatCard(cat: cat);
        },
      ),
    );
  }
}
