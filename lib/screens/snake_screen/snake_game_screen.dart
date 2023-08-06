import 'dart:async';
import 'dart:math';

import 'package:calala_market/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum Direction { stop, up, down, left, right }

class SnakeGameScreen extends StatefulWidget {
  const SnakeGameScreen({super.key});
  static const String routeName = "SnakeGameScreen";

  @override
  State<SnakeGameScreen> createState() => _SnakeGameScreenState();
}

class _SnakeGameScreenState extends State<SnakeGameScreen> {
  final width = 15;
  final height = 15;
  var rnd = Random();
  var getEventTrigger = {};
  Timer? _timer;
  List<Point> snake = [const Point(0, 0)];
  Point food = const Point(0, 0);
  Color foodColor = const Color.fromARGB(255, 0, 26, 255);
  Color snakeColor = const Color.fromARGB(255, 102, 47, 255);
  int snakeLength = 2;
  Direction dir = Direction.stop;
  int renderSpeed = 400;

  @override
  void initState() {
    super.initState();
    food = Point(rnd.nextInt(width), rnd.nextInt(height));
    updateRenderingInterval(interval: renderSpeed);
    getEventTrigger = {
      LogicalKeyboardKey.arrowUp: () {
        if (dir != Direction.down) dir = Direction.up;
      },
      LogicalKeyboardKey.arrowDown: () {
        if (dir != Direction.up) dir = Direction.down;
      },
      LogicalKeyboardKey.arrowLeft: () {
        if (dir != Direction.right) dir = Direction.left;
      },
      LogicalKeyboardKey.arrowRight: () {
        if (dir != Direction.left) dir = Direction.right;
      },
      LogicalKeyboardKey.space: () {
        dir = Direction.stop;
      },
      LogicalKeyboardKey.escape: () {
        Navigator.maybePop(context);
      },
    };
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    mainLoop();
    return SafeArea(
      child: Scaffold(
        body: RawKeyboardListener(
          autofocus: true,
          focusNode: FocusNode(),
          onKey: updateSnakeDirection,
          child: Column(
            children: [
              Expanded(
                  flex: 43,
                  child: Container(
                    // color: Colors.grey,
                    // padding: const EdgeInsets.all(),
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
                          padding: const EdgeInsets.all(0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              alignment: Alignment.center,
                              color: getcurrentCellColor(x, y),
                            ),
                          ),
                        );
                      },
                    ),
                  )),
              Expanded(
                  flex: 40,
                  child: Container(
                    color: kBlack87,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void updateSnakeDirection(RawKeyEvent e) {
    if (e is RawKeyDownEvent) {
      getEventTrigger.putIfAbsent(e.logicalKey, () => () {})();
    }
  }

  void mainLoop() {
    switch (dir) {
      case Direction.up:
        moveUp();
        break;
      case Direction.down:
        moveDown();
        break;
      case Direction.left:
        moveLeft();
        break;
      case Direction.right:
        moveRight();
        break;
      default:
    }
    updateSnakeLengthIfEat();
    if (snake.length > snakeLength) snake.removeLast();
  }

  void moveUp() {
    snake.insert(0, Point(snake.first.x, (snake.first.y - 1) % height));
  }

  void moveDown() {
    snake.insert(0, Point(snake.first.x, (snake.first.y + 1) % height));
  }

  void moveLeft() {
    snake.insert(0, Point((snake.first.x - 1) % width, snake.first.y));
  }

  void moveRight() {
    snake.insert(0, Point((snake.first.x + 1) % width, snake.first.y));
  }

  void updateSnakeLengthIfEat() {
    var snakeHead = snake.first;
    if (snakeHead == food) {
      setState(() {
        // renderSpeed -= 200;
      });
      // updateRenderingInterval(interval: renderSpeed);
      snakeLength++;
      // _timer!.cancel();
      food = Point(rnd.nextInt(width), rnd.nextInt(height));
      while (snake.contains(food)) {
        food = Point(rnd.nextInt(width), rnd.nextInt(height));
      }

      snakeColor = foodColor;
      foodColor = getRandomColor();
    }
    // check if self collision
    if (snake.sublist(1).contains(snakeHead)) {
      snake.removeRange(2, snakeLength);
      snakeLength = 2;
    }
  }

  Color getcurrentCellColor(x, y) {
    Point currentCoordinate = Point(x, y);
    var pointIndexInSnake = snake.indexOf(currentCoordinate);
    if (currentCoordinate == food) {
      return foodColor;
    } else if (pointIndexInSnake >= 0) {
      return snakeColor
          .withOpacity(1 - pointIndexInSnake / (snake.length * 1.5));
    } else {
      return Colors.transparent;
    }
  }

  void updateRenderingInterval({int interval = 400}) {
    if (_timer != null) {
      // _timer!.cancel(); s
    }
    _timer = Timer.periodic(const Duration(milliseconds: 200), (Timer timer) {
      setState(() {});
    });
  }

  Color getRandomColor() {
    Random random = Random();
    // return widget
    //     .darkMaterialColors[random.nextInt(widget.darkMaterialColors.length)];
    int red = random.nextInt(150);
    int green = random.nextInt(150);
    int blue = random.nextInt(150);
    Color randomColor = Color.fromARGB(255, red, green, blue);
    return randomColor;
  }
}
