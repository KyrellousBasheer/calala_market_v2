import 'package:calala_market/screens/menu_screen/providers/item_count_provider.dart';
import 'package:calala_market/screens/shared_widgets/add_And_remove_product_to_cart_sidget.dart';
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
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu),
            onSelected: (value) {
              if (value == "cancel_order") {
                Provider.of<OrderProvider>(context, listen: false).cancel();
                Navigator.of(context).pop();

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    // backgroundColor: kMainColor.withOpacity(.3),
                    content: Text('Order is canceled.'),
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'cancel_order',
                  child: Text("Cancel"),
                ),
                const PopupMenuItem<String>(
                  value: 'save_to_add_later',
                  child: Text('Save to order later'),
                ),
                const PopupMenuItem<String>(
                  value: 'order_later',
                  child: Text('Schedule'),
                ),
              ];
            },
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.only(bottom: 30),
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
                            child: Scrollbar(
                              thickness: 4,
                              thumbVisibility: true,
                              child: ListView.separated(
                                itemCount: activeOrder.productsList.length,
                                separatorBuilder: (context, index) =>
                                    const Divider(thickness: 2),
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
                          ),
                          const TotalOrderInfoWidget()
                        ]);
            },
          )),
    );
  }
}

class TotalOrderInfoWidget extends StatelessWidget {
  const TotalOrderInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kScreenSize!.width / 1.1,
      height: kScreenSize!.height / 4.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            height: kScreenSize!.height / 7,
            decoration: BoxDecoration(
              color: kMainColor.withOpacity(.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Sub total",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${Provider.of<OrderProvider>(context).totalCost} EGP",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
                const Divider(thickness: 2),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "10 EGP",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ]),
                const Divider(thickness: 2),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "${Provider.of<OrderProvider>(context).totalCost + 10} EGP",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ],
            ),
          ),
          SizedBox(
              height: kScreenSize!.height / 15,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    backgroundColor: Colors.green),
                onPressed: () {},
                child: const Text(
                  "Order now",
                  style: TextStyle(fontSize: 25),
                ),
              )),
        ],
      ),
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
          product: product,
          count: count,
        ));
  }
}

class OrderScreenItemWidget extends StatelessWidget {
  final int count;

  final Product product;

  const OrderScreenItemWidget({
    super.key,
    required this.product,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 16),
      padding: const EdgeInsets.all(8),
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
              product.imageUrl,
              width: 95,
              height: 95,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text('\$${product.price}'),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
              child: AddAndRemoveProductToCartWidget(
            product: product,
            count: count,
          ))
        ],
      ),
    );
  }
}
