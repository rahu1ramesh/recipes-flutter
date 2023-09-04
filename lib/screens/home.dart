import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Tile Screen'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 tiles in a row
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return TileWidget(
            text: 'Tile ${index + 1}',
            gradientColors: _getGradientColors(index),
          );
        },
      ),
    );
  }

  // Function to generate unique gradient colors for each tile
  List<Color> _getGradientColors(int index) {
    switch (index % 6) {
      case 0:
        return [Colors.red, const Color.fromARGB(255, 255, 116, 162)];
      case 1:
        return [Colors.blue, Colors.lightBlue];
      case 2:
        return [Colors.green, const Color.fromARGB(255, 161, 225, 87)];
      case 3:
        return [Colors.orange, Colors.deepOrange];
      case 4:
        return [Colors.purple, Colors.deepPurple];
      case 5:
        return [Colors.teal, Colors.cyan];
      default:
        return [Colors.black, Colors.grey];
    }
  }
}

class TileWidget extends StatelessWidget {
  final String text;
  final List<Color> gradientColors;

  TileWidget({super.key, required this.text, required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
