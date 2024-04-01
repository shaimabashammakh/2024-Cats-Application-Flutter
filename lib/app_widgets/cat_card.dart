import 'package:flutter/material.dart';
import 'package:cats_application/Screens/details_screen.dart';
import '../model/cat.dart';

class CatCard extends StatelessWidget {
  final Cat cat;

  const CatCard({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailsScreen(cat: cat);
        }));
      },
      child: Card(
          child: Column(
        children: [
          Expanded(
            child: Image.network(
                width: double.infinity, fit: BoxFit.cover, cat.imageLink),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              cat.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 48, 156, 150)),
            ),
          )
        ],
      )),
    );
  }
}
