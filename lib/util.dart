import 'package:animation_hero/radial.dart';
import 'package:flutter/material.dart';

class Util {
  static const String COFFEE_URL =
      'https://www.tastingtable.com/img/gallery/coffee-brands-ranked-from-worst-to-best/intro-1645231221.jpg';
  static const String CAPPUCCINO_URL =
      'https://insanelygoodrecipes.com/wp-content/uploads/2020/07/Cup-Of-Creamy-Coffee-500x375.png';
  static const String TEA_URL =
      'https://www.aicr.org/wp-content/uploads/2020/06/peppermint-tea-on-teacup-1417945.jpg';

  static Widget buildHeroIcon(String path, String tag) {
    return Hero(
      tag: tag,
      child: Container(
        width: 80,
        height: 80,
        child: Image.network(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  static Widget buildHeroDestination(String path, String tag, double width) {
    return Hero(
      tag: tag,
      child: Container(
        width: width,
        child: Image.network(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  static Widget buildHeroRadialIcon(
      String path, String tag, double minRadius, double maxRadius) {
    return Container(
      child: Hero(
        tag: tag,
        createRectTween: createTween,
        child: Container(
          height: minRadius,
          width: minRadius,
          child: RadialTransition(
            maxRadius: maxRadius,
            child: Image.network(
              path,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  static Tween<Rect?> createTween(Rect? begin, Rect? end) {
    return MaterialRectArcTween(
      begin: begin,
      end: end,
    );
  }

  static Widget buildHeroRadialDestination(
    String path,
    String tag,
    double maxWidth,
    double maxHeight,
    VoidCallback pop,
  ) {
    return GestureDetector(
      child: Hero(
        createRectTween: createTween,
        tag: tag,
        child: Container(
          height: maxHeight,
          width: maxWidth,
          child: RadialTransition(
            maxRadius: maxWidth / 2,
            child: Image.network(
              path,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      onTap: pop,
    );
  }
}
