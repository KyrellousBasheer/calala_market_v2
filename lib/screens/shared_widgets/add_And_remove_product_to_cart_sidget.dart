import 'package:calala_market/constants.dart';
import 'package:calala_market/screens/menu_screen/providers/item_count_provider.dart';
import 'package:calala_market/screens/shared_widgets/small_icon_btn.dart';
import 'package:calala_market/services/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddAndRemoveProductToCartWidget extends StatelessWidget {
  const AddAndRemoveProductToCartWidget({
    super.key,
    required this.product,
    required this.count,
  });

  final Product product;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 10,
          child: SmallIconBtn(
            icon: Icons.remove,
            iconColor: Colors.green,
            onPressed: () {
              Provider.of<OrderProvider>(context, listen: false)
                  .removeProduct(product);
            },
          ),
        ),
        const VerticalDivider(
          color: kMainColorTransparent,
          thickness: 2,
          width: 0,
        ),
        Expanded(flex: 15, child: Center(child: Text("$count"))),
        const VerticalDivider(
          color: kMainColorTransparent,
          thickness: 2,
          width: 0,
        ),
        Expanded(
          flex: 10,
          child: SmallIconBtn(
            icon: Icons.add,
            onPressed: () {
              Provider.of<OrderProvider>(context, listen: false)
                  .addProduct(product);
            },
            iconColor: Colors.orange,
          ),
        )
      ],
    );
  }
}
