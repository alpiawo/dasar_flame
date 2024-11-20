import 'dart:async';

// import 'package:flutter/material.dart';
import 'package:dasar_flame/components/MeteorSpawner.dart';
// import 'package:dasar_flame/components/meteor.dart';
import 'package:dasar_flame/components/ship.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:dasar_flame/components/bgParallaxComponent.dart';

class MyFlameGame extends FlameGame with PanDetector {
  late Ship s;
  late Bgparallaxcomponent bgParallax;
  late Meteorspawner asp;
  
  @override
  FutureOr<void> onLoad() async {
    bgParallax = Bgparallaxcomponent();
    add(bgParallax);

    asp = Meteorspawner();
    add(asp);

    s = Ship();
    add(s);
  }



  @override
  void onPanUpdate(DragUpdateInfo info) {
    s.setTujuan(info);
    // s.position = info.eventPosition.global;
  }

  @override
  void update(double dt) {
    bgParallax.changeSpeedBasedShip(s);
    super.update(dt);
  }  
}

