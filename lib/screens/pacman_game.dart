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
                playerY = (playerY - 1) % height;
              },
              LogicalKeyboardKey.arrowDown: () {
                playerY = (playerY + 1) % height;
              },
              LogicalKeyboardKey.arrowLeft: () {
                playerX = (playerX - 1) % width;
              },
              LogicalKeyboardKey.arrowRight: () {
                playerX = (playerX + 1) % width;
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
                            color: (x == playerX && y == playerY)
                                ? Colors.redAccent
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
