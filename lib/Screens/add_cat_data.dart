import 'package:flutter/material.dart';

class AddCatData extends StatefulWidget {
  const AddCatData({super.key});

  @override
  State<AddCatData> createState() => _AddCatDataState();
}

class _AddCatDataState extends State<AddCatData> {
  TextEditingController name = TextEditingController();
  TextEditingController origin = TextEditingController();
  TextEditingController length = TextEditingController();
  TextEditingController minWeight = TextEditingController();
  TextEditingController maxWeight = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => const SizedBox(
                  height: 400,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(),
                  ),
                ));
      }),
    );
  }
}
