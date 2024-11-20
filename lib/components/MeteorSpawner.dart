import 'dart:async';
import 'dart:math' as math;

import 'package:dasar_flame/components/meteor.dart';
import 'package:flame/components.dart';
import 'package:flame/experimental.dart';

class Meteorspawner extends PositionComponent with HasGameRef {
  late SpawnComponent spawner;

  @override
  FutureOr<void> onLoad() {
    math.Random r = math.Random();
    spawner = SpawnComponent(
      factory: (idx) {
        return Asteroid(ukuran: r.nextDouble() * 0.5 + 0.3);
      },
      period: 0.5,
      autoStart: true,
      area: Rectangle.fromLTWH(0, 0, game.size.x, game.size.y),
      within: false,
    );

    game.add(spawner);
    return super.onLoad();
  }
}