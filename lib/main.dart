import 'util.dart';
import 'package:flutter/material.dart';
import 'details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HeroPage(),
    );
  }
}

class HeroPage extends StatelessWidget {
  const HeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double maxRadius = MediaQuery.of(context).size.width;
    final double minRadius = 80;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation Demo'),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              child: Util.buildHeroRadialIcon(
                Util.COFFEE_URL,
                'coffee',
                minRadius,
                maxRadius,
              ),
              onTap: () {
                changeRoute(context, 'coffee');
              },
            ),
            GestureDetector(
              child: Util.buildHeroRadialIcon(
                Util.CAPPUCCINO_URL,
                'cappuccino',
                minRadius,
                maxRadius,
              ),
              onTap: () {
                changeRoute(context, 'cappuccino');
              },
            ),
            GestureDetector(
              child: Util.buildHeroRadialIcon(
                Util.TEA_URL,
                'tea',
                minRadius,
                maxRadius,
              ),
              onTap: () {
                changeRoute(context, 'tea');
              },
            )
          ],
        ),
      ),
    );
  }

  void changeRoute(BuildContext context, String drink) {
    switch (drink) {
      case 'coffee':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(Util.COFFEE_URL, drink),
          ),
        );
        break;
      case 'cappuccino':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(Util.CAPPUCCINO_URL, drink),
          ),
        );
        break;
      case 'tea':
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(Util.TEA_URL, drink),
          ),
        );
        break;
      default:
    }
  }
}
