import 'package:animation_hero/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class Details extends StatelessWidget {
  // const Details({super.key});

  final String drinkPath;
  final String drinkTag;
  const Details(this.drinkPath, this.drinkTag, {super.key});

  @override
  Widget build(BuildContext context) {
    timeDilation = 10;
    // Per prendere/trovare la grandezza dello schermo a pieno
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    pop() {
      Navigator.of(context).pop();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero AnimationP'),
      ),
      body: Center(
        child: Util.buildHeroRadialDestination(
            drinkPath, drinkTag, width, height, pop),
      ),
    );
  }
}
