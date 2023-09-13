import 'package:calala_market/screens/menu_screen/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class OrdersHistoryScreen extends StatelessWidget {
  const OrdersHistoryScreen({super.key});
  static const String routeName = "OrdersHistoryScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MainBottomNavBar(index: 1),
    );
  }
}
