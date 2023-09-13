import 'package:calala_market/screens/menu_screen/menu_screen.dart';
import 'package:calala_market/screens/orders_history_screen/orders_history_screen.dart';
import 'package:flutter/material.dart';

class MainBottomNavBar extends StatelessWidget {
  final int index;
  const MainBottomNavBar({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.article_rounded),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: index,
      elevation: 0,
      showUnselectedLabels: false,
      backgroundColor: Colors.green,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.4),
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, MenuScreen.routeName);
            break;
          case 1:
            Navigator.pushReplacementNamed(
              context,
              OrdersHistoryScreen.routeName,
            );
            break;

          default:
        }
      },
    );
  }
}
