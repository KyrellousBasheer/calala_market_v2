import 'dart:ui';

import 'package:calala_market/constants.dart';
import 'package:calala_market/screens/menu_screen/providers/item_count_provider.dart';
import 'package:calala_market/screens/shared_widgets/add_And_remove_product_to_cart_sidget.dart';
import 'package:calala_market/services/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});
  static const String routeName = "ProductDetailsScreen";
  @override
  Widget build(BuildContext context) {
    Product product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: kScreenSize!.height / 2,
            child: Hero(
              transitionOnUserGestures: true,
              tag: product.title,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          buttonArrow(context),
          scroll(product),
        ],
      ),
    );
  }

  buttonArrow(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 30),
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: kMainColor,
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.arrow_back_sharp,
                size: 30,
                color: kMainColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  scroll(Product product) {
    return DraggableScrollableSheet(
        initialChildSize: 0.5,
        maxChildSize: .6,
        minChildSize: 0.5,
        builder: (context, scrollController) {
          return Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: kMainColor.withOpacity(.7),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kScreenSize!.width / 10),
                  topRight: Radius.circular(kScreenSize!.width / 10)),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: productDetails(context, product),
            ),
          );
        });
  }

  Widget productDetails(BuildContext context, Product product) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(height: 5, width: 35, color: Colors.black45),
            ),
            const SizedBox(height: 10),
            Text(
              product.title,
              style: TextStyle(
                  fontSize: kScreenSize!.width / 10,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "\$ ${product.price}",
                    style: TextStyle(
                      fontSize: kScreenSize!.width / 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(flex: 1, child: addedToCartWidget(product)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget addedToCartWidget(Product product) {
    return Container(
      height: kScreenSize!.height / 23,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Consumer<OrderProvider>(
        builder: (context, orderProvider, child) {
          var count = orderProvider.productCount(product);
          return (count < 1)
              ? GestureDetector(
                  onTap: () {
                    orderProvider.addProduct(product);
                  },
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Container(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {
                            orderProvider.addProduct(product);
                          },
                          child: const Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: kMainColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                        )),
                  ),
                )
              : AddAndRemoveProductToCartWidget(product: product, count: count);
        },
      ),
    );
  }
}
