import 'package:calala_market/screens/menu_screen/providers/item_count_provider.dart';
import 'package:calala_market/services/models/product.dart';
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
          child: Consumer<OrderProvider>(
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
                            child: ListView.separated(
                              itemCount: activeOrder.productsList.length,
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                thickness: 2,
                              ),
                              itemBuilder: (context, index) {
                                var product =
                                    activeOrder.productsList[index].key;
                                var count =
                                    activeOrder.productsList[index].value;
                                return OrderItemWidget(
                                    product: product, count: count);
                              },
                            ),
                          ),
                          SizedBox(
                              width: double.infinity,
                              height: kScreenSize!.height / 14,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Consumer<OrderProvider>(
                                      builder: (context, orderChangesProvider,
                                              child) =>
                                          Text(
                                              "Order now ${orderChangesProvider.totalCost}"))))
                        ]);
            },
          )),
    );
  }
}

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({
    super.key,
    required this.product,
    required this.count,
  });

  final Product product;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(product.id.toString()),
      onDismissed: (direction) {
        Provider.of<OrderProvider>(context, listen: false)
            .removeProduct(product, allEntries: true);
      },
      confirmDismiss: (direction) async {
        return (direction == DismissDirection.startToEnd) ? false : true;
      },
      secondaryBackground: Container(
        color: Colors.redAccent,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(child: Container()),
          const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.delete_sweep,
              size: 30,
              color: Colors.white,
            ),
          ),
        ]),
      ),
      background: Container(),
      child: ListTile(
        title: Text(product.title),
        trailing: Text("$count"),
      ),
    );
  }
}
