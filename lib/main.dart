import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_games/sprites/striker.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // FlameAudio.play('explosion.mp3');

  // await Flame.images.load("assets/image/striker.png");
  // Flame.images.load('enemy.png');

  // TiledComponent.load('level.tmx', tileSize);
  // runApp(GameWidget(
  //   game: MyGame(),
  // ));
  final myGame = FlameGame(world: GameWorld());
  runApp(
    GameWidget(game: myGame),
  );
  // runApp(const MyApp());
  // runApp(TestApp());
}

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Image.asset("assets/image/striker.png"),
        ],
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: GameWidget.controlled(
            gameFactory: MyGame.new,
          ),
        ),
      ],
    );
  }
}

class MyGame extends Game {
  @override
  void render(Object canvas) {
    // TODO: implement render
  }

  @override
  void update(double dt) {
    // TODO: implement update
  }

  @override
  FutureOr<void> onLoad() async {
    return super.onLoad();
  }
}

class GameWorld extends World {
  @override
  Future<void> onLoad() async {
    await add(SpriteStriker());
  }
}
