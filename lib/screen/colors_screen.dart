import 'package:flutter/material.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Colors'),
        ),
        body: PageView(
          children: <Widget>[
            for (var color in colorsList)
              Container(
                color: color.color,
                child: Center(
                  child: Text(
                    color.name.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
          ],
        ));
  }
}

class ColorList {
  String name;
  MaterialColor color;

  ColorList({required this.name, required this.color});
}

List<ColorList> colorsList = [
  ColorList(name: 'red', color: Colors.red),
  ColorList(name: 'blue', color: Colors.blue),
  ColorList(name: 'green', color: Colors.green),
  ColorList(name: 'yellow', color: Colors.yellow),
  ColorList(name: 'orange', color: Colors.orange),
  ColorList(name: 'purple', color: Colors.purple),
  ColorList(name: 'pink', color: Colors.pink),
  ColorList(name: 'brown', color: Colors.brown),
  ColorList(name: 'grey', color: Colors.grey),
];
