import 'package:flutter/material.dart';
import 'package:cats_application/main.dart';
import '../app_widgets/cat_details.dart';
import '../model/cat.dart';

class DetailsScreen extends StatefulWidget {
  final Cat cat;
  const DetailsScreen({super.key, required this.cat});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 58, 183, 177),
        onPressed: () {
          if (favoriteCats.contains(widget.cat)) {
            favoriteCats.remove(widget.cat);
            setState(() {});
            showDialog(
                context: context,
                builder: (context) {
                  return const Dialog(
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.check),
                            Text("Removed from Favorite List Successful")
                          ],
                        ),
                      ),
                    ),
                  );
                });
          } else {
            favoriteCats.add(widget.cat);
            for (var item in favoriteCats) {
              print(item.name);
            }
            setState(() {});
            showDialog(
                context: context,
                builder: (context) {
                  return const Dialog(
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.check),
                            Text("Added to Favorite List Successful")
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }
        },
        child: Icon(
          favoriteCats.contains(widget.cat)
              ? Icons.favorite
              : Icons.favorite_border,
          color: Colors.red,
        ),
      ),
      appBar: AppBar(
        title: Text(widget.cat.name),
        backgroundColor: const Color.fromARGB(255, 58, 183, 177),
        centerTitle: true,
      ),
      body: CatDetails(
        cat: widget.cat,
      ),
    );
  }
}
