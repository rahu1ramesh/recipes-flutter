import 'package:cookbook/screens/cuisine.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import '../models/cuisine.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Cuisine> cuisineList = [];

  @override
  void initState() {
    super.initState();
    _readJson().then((_) {
      setState(() {});
    });
  }

  Future<void> _readJson() async {
    final String response = await rootBundle.loadString('data/data.json');
    final Map<String, dynamic> jsonData = json.decode(response);
    for (var key in jsonData.keys) {
      cuisineList.add(Cuisine.fromJson(jsonData[key]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tile Screen'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.format_quote_sharp,
              color: Colors.white,
            ),
            onPressed: () => context.go('/quotes'),
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 tiles in a row
        ),
        itemCount: cuisineList.length,
        itemBuilder: (context, index) {
          return TileWidget(
            text: cuisineList[index].name,
            gradientColors: [
              Color(int.parse(cuisineList[index].colors[0], radix: 16)),
              Color(int.parse(cuisineList[index].colors[1], radix: 16))
            ],
            cuisine: cuisineList[index],
          );
        },
      ),
    );
  }
}

class TileWidget extends StatelessWidget {
  final String text;
  final List<Color> gradientColors;
  final Cuisine cuisine;

  const TileWidget({
    super.key,
    required this.text,
    required this.gradientColors,
    required this.cuisine,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CuisineScreen(
            cuisine: cuisine,
          ),
        ),
      ),
      child: Card(
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
      ),
    );
  }
}
