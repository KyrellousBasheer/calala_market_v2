import 'package:calala_market/constants.dart';
import 'package:calala_market/screens/menu_screen/providers/item_count_provider.dart';
import 'package:calala_market/screens/menu_screen/widgets/search_bar.dart';
import 'package:calala_market/screens/order_screen/order_screen.dart';
import 'package:calala_market/screens/shared_widgets/main_drawer.dart';
import 'package:calala_market/services/dummy_data_generator.dart';
import 'package:calala_market/services/models/category.dart';
import 'package:calala_market/services/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared_widgets/small_icon_btn.dart';
import 'widgets/bottom_nav_bar.dart';

class MenuScreen extends StatelessWidget {
  static const String routeName = "/";
  MenuScreen({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MainDrawer(),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: kMainColor,
                  width: 2,
                ),
                image: const DecorationImage(
                  image: NetworkImage(profileImageUrl),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(OrderScreen.routeName);
              },
              icon: Stack(children: [
                const Center(
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                  ),
                ),
                Consumer<OrderProvider>(
                  builder: (context, orderProvider, child) {
                    var totalCount = orderProvider.totalCount;
                    if (totalCount > 0) {
                      return Positioned(
                        right: 0,
                        top: 0,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text("$totalCount")),
                          ),
                        ),
                      );
                    }
                    return Container();
                  },
                )
              ]),
              color: kBlack87,
            ),
          )
        ],
        title: const SearchField(),
        backgroundColor: Colors.transparent,
        toolbarHeight: kScreenSize!.height / 12,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 10),
            _CategoriesAndProducts(),
          ],
        ),
      ),
      bottomNavigationBar: const MainBottomNavBar(),
    );
  }
}

class _CategoriesAndProducts extends StatelessWidget {
  const _CategoriesAndProducts();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DummyDataGenerator.getCategories(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Expanded(
              child: Center(child: CircularProgressIndicator()));
        } else if (snapshot.hasError) {
          print(snapshot.error);
          return const Expanded(
              child: Center(child: Text("Something went wrong!")));
        }
        return _CustomTabView(categories: snapshot.data ?? []);
      },
    );
  }
}

class _CustomTabView extends StatelessWidget {
  final List<ProductCategory> categories;

  const _CustomTabView({required this.categories});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TabBar(
                isScrollable: true,
                tabs: categories
                    .map((c) => Tab(
                          text: c.title,
                          icon: CircleAvatar(
                            backgroundImage: NetworkImage(c.iconUrl),
                          ),
                        ))
                    .toList(),
                labelColor: kBlack87,
              ),
            ),
            Expanded(
              child: TabBarView(
                children:
                    categories.map((c) => ProductsView(category: c)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductsView extends StatelessWidget {
  final ProductCategory category;
  const ProductsView({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 0,
      ),
      itemCount: category.relatedProducts.length,
      itemBuilder: (context, index) =>
          ProductWidget(product: category.relatedProducts[index]),
    );
  }
}

var addedToCart = 0;

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(7)),
        border: Border.all(
          color: kMainColorTransparent,
          width: 1.5,
        ),
      ),
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 50,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: SmallIconBtn(
                    icon: (addedToCart % 5 == 0)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    onPressed: () {},
                    iconColor: kMainColor,
                    radius: 25,
                    paddingRadius: 5,
                    splashRadius: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: SelectableText(
                product.title,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "\$${product.price}",
                    style: const TextStyle(
                      color: kMainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Text("for 1 kilo"),
              ],
            ),
          ),
          const Divider(
            color: kMainColorTransparent,
            height: 0,
            thickness: 2,
          ),
          Expanded(
              flex: 12,
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
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 10,
                              child: SmallIconBtn(
                                icon: Icons.remove,
                                iconColor: Colors.green,
                                onPressed: () {
                                  orderProvider.removeProduct(product);
                                },
                              ),
                            ),
                            const VerticalDivider(
                              color: kMainColorTransparent,
                              thickness: 2,
                              width: 0,
                            ),
                            Expanded(
                                flex: 15, child: Center(child: Text("$count"))),
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
                                  orderProvider.addProduct(product);
                                },
                                iconColor: Colors.orange,
                              ),
                            )
                          ],
                        );
                },
              )),
        ],
      ),
    );
  }
}
