import 'package:calala_market/shared_widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import 'widgets/bottom_nav_bar.dart';

class MenuScreen extends StatelessWidget {
  static const String routeName = "menu-screen";
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      body: Column(children: [
        AspectRatio(
          aspectRatio: 3.2,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black87.withOpacity(.3),
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(30))),
          ),
        )
      ]),
      bottomNavigationBar: const MainBottomNavBar(),
    );
  }
}
