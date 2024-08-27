import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50], // Light amber background
      appBar: AppBar(
        title: const Text(
          'Desserts',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              elevation: 4,
              child: ListTile(
                leading: Image.asset('assets/carrot.jpg'),
                title: const Text(
                  'Carrot Halwa',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: const Text(
                  '₹100',
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
              ),
            ),
            const Divider(),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Image.asset('assets/carrot.jpg'),
                title: const Text(
                  'Pudding',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: const Text(
                  '₹250',
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
              ),
            ),
            const Divider(),
            Card(
              elevation: 4,
              child: ListTile(
                leading: Image.asset('assets/carrot.jpg'),
                title: const Text(
                  'Fruit Salad',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: const Text(
                  '₹150',
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
