import 'package:calala_market/screens/menu_screen/menu_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: const MenuScreen(),
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
    ));
