import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.teal[100],
              ),
              padding: const EdgeInsets.all(8),
              child: const Center(
                child: Text("Colors",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.teal[200],
              ),
              padding: const EdgeInsets.all(8),
              child: const Center(
                child: Text('Numbers',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.teal[300],
              ),
              padding: const EdgeInsets.all(8),
              child: const Center(
                child: Text('Vowels',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ));
  }
}
