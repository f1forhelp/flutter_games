import 'dart:async';

import 'package:flame/components.dart';

class SpriteStriker extends SpriteComponent {
  SpriteStriker() : super(size: Vector2.all(50));

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load("striker.png");
  }
}
