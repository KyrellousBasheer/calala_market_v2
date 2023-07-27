import 'package:calala_market/screens/menu_screen/menu_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    kScreenSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: MenuScreen(),
    );
  }
}
