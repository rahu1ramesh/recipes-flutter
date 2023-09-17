import 'package:cookbook/models/cookbook.dart';
import 'package:cookbook/screens/cuisine.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/cuisine.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    CookBook.readJson().then((_) => setState(() {}));
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
        itemCount: CookBook.cuisines.length,
        itemBuilder: (context, index) {
          return TileWidget(
            text: CookBook.cuisines[index].name,
            gradientColors: [
              Color(int.parse(CookBook.cuisines[index].colors[0], radix: 16)),
              Color(int.parse(CookBook.cuisines[index].colors[1], radix: 16))
            ],
            cuisine: CookBook.cuisines[index],
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
