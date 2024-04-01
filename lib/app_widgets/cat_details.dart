import 'package:flutter/material.dart';
import '../model/cat.dart';

class CatDetails extends StatelessWidget {
  final Cat cat;
  const CatDetails({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(cat.imageLink),
        Text(
          cat.name,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text('Origin: ${cat.origin}', style: TextStyle(fontSize: 16)),
        Text('Max Weight: ${cat.maxWeight}', style: TextStyle(fontSize: 16)),
        Text('Min Weight: ${cat.minWeight}', style: TextStyle(fontSize: 16)),
        Text('Length: ${cat.length}', style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
