import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PacmanScreen extends StatefulWidget {
  const PacmanScreen({super.key});

  @override
  State<PacmanScreen> createState() => _PacmanScreenState();
}

class _PacmanScreenState extends State<PacmanScreen> {
  final width = 5;

  final height = 5;
  int playerX = 0;
  int playerY = 0;
  List<Point> snake = [const Point(0, 0)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RawKeyboardListener(
        autofocus: true,
        focusNode: FocusNode(),
        onKey: (RawKeyEvent e) {
          print(e.runtimeType);
          if (e is RawKeyDownEvent) {
            var getEventTrigger = {
              LogicalKeyboardKey.arrowUp: () {
                snake.insert(
                    0, Point(snake.first.x, (snake.first.y - 1) % height));
                if (snake.length > 4) {
                  snake.removeLast();
                }
              },
              LogicalKeyboardKey.arrowDown: () {
                snake.insert(
                    0, Point(snake.first.x, (snake.first.y + 1) % height));
                if (snake.length > 4) {
                  snake.removeLast();
                }
              },
              LogicalKeyboardKey.arrowLeft: () {
                snake.insert(
                    0, Point(snake.first.x - 1, (snake.first.y) % height));
                if (snake.length > 4) {
                  snake.removeLast();
                }
              },
              LogicalKeyboardKey.arrowRight: () {
                snake.insert(
                    0, Point(snake.first.x + 1, (snake.first.y) % height));
                if (snake.length > 4) {
                  snake.removeLast();
                }
              },
            };
            setState(() {
              getEventTrigger.putIfAbsent(e.logicalKey, () => () {})();
            });
          }
        },
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  // color: Colors.grey,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: width,
                      childAspectRatio: 1,
                    ),
                    itemCount: width * height,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      int x = (index % width);
                      int y = ((index / height)).floor();

                      return Padding(
                        padding: const EdgeInsets.all(1),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            alignment: Alignment.center,
                            color: (snake.contains(Point(x, y)))
                                ? Colors.redAccent.withOpacity((snake.length -
                                        snake.indexOf(Point(x, y))) /
                                    snake.length)
                                : Colors.greenAccent.withOpacity(.3),
                          ),
                        ),
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
