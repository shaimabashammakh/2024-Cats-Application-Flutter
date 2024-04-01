import 'package:flutter/material.dart';
import 'package:cats_application/main.dart';

class FavoriteCatsScreen extends StatelessWidget {
  const FavoriteCatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 58, 183, 177),
        title: const Text("Favorites"),
      ),
      body: ListView.builder(
        itemCount: favoriteCats.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(favoriteCats[index].name),
            onDismissed: (direction) {
              favoriteCats.remove(favoriteCats[index]);
            },
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          favoriteCats[index].imageLink,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Text(favoriteCats[index].name)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
