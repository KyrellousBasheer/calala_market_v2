import 'package:calala_market/screens/menu_screen/providers/item_count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});
  static const String routeName = "OrderScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        title: const Text("Your Order"),
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Consumer<OrderChangesProvider>(
            builder: (context, value, child) {
              var activeOrder = value.activeOrder;

              return (activeOrder.productsList.isEmpty)
                  ? const Center(
                      child: Text("No Items selected"),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: activeOrder.productsList.length,
                              itemBuilder: (context, index) {
                                var product =
                                    activeOrder.productsList[index].key;
                                var count =
                                    activeOrder.productsList[index].value;
                                return ListTile(
                                  title: Text(product.title),
                                  trailing: Text("$count"),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                              width: double.infinity,
                              height: kScreenSize!.height / 14,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("Order now")))
                        ]);
            },
          )),
    );
  }
}
