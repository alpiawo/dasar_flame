// import 'package:dasar_flame/components/ship.dart';
import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/painting.dart';
import 'package:dasar_flame/components/ship.dart';

class Bgparallaxcomponent extends ParallaxComponent with HasGameRef {
  final _parallelImage = [
    ParallaxImageData("parallax/bkgd_0.png"),
    ParallaxImageData("parallax/bkgd_1.png"),
    ParallaxImageData("parallax/bkgd_2.png"),
    ParallaxImageData("parallax/bkgd_3.png"),
    ParallaxImageData("parallax/bkgd_4.png"),
    ParallaxImageData("parallax/bkgd_5.png"),
    ParallaxImageData("parallax/bkgd_6.png"),
  ];
  @override
  Future<void> onLoad() async {
    parallax = await game.loadParallax(_parallelImage,
      baseVelocity: Vector2(10, 0), // arah background parallax
      velocityMultiplierDelta: Vector2(1.5, 1.5), // 1.5x untuk menambah kecepatan bacimage parallax
      repeat: ImageRepeat.repeat);
  }

  void changeSpeedBasedShip(Ship player) {
    if (parallax != null) {
      parallax!.baseVelocity = player.arah*10;
    }
  }
}