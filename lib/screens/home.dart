import 'package:cookbook/models/cookbook.dart';
import 'package:cookbook/widgets/cuisine_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          crossAxisCount: 2,
        ),
        itemCount: CookBook.cuisines.length,
        itemBuilder: (context, index) {
          return CuisineTile(
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
