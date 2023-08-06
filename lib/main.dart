import 'package:calala_market/screens/menu_screen/menu_screen.dart';
import 'package:calala_market/screens/order_screen/order_screen.dart';
import 'package:calala_market/screens/snake_screen/snake_game_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return MaterialApp(
      routes: {
        MenuScreen.routeName: (context) => MenuScreen(),
        SnakeGameScreen.routeName: (context) => const SnakeGameScreen(),
        OrderScreen.routeName: (context) => const OrderScreen()
      },
      theme: ThemeData(primaryColor: Colors.green),
    );
  }
}
