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
                                      builder: (context, orderProvider,
                                              child) =>
                                          Text(
                                              "Order now ${orderProvider.totalCost}"))))
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
        child: OrderScreenItemWidget(
          imageUrl: product.imageUrl,
          productName: product.title,
          price: product.price,
          orderCount: count,
          onAdd: () {},
          onRemove: () {},
        ));
  }
}

class OrderScreenItemWidget extends StatelessWidget {
  final String productName;
  final double price;
  final String imageUrl;
  final int orderCount;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const OrderScreenItemWidget({
    super.key,
    required this.productName,
    required this.price,
    required this.imageUrl,
    required this.orderCount,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text('\$$price'),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: onRemove,
              ),
              Text(
                orderCount.toString(),
                style: const TextStyle(fontSize: 16),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: onAdd,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
