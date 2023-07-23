import 'package:calala_market/screens/menu_screen/widgets/search_bar.dart';
import 'package:calala_market/services/dummy_data_generator.dart';
import 'package:calala_market/services/models/category.dart';
import 'package:calala_market/services/models/product.dart';
import 'package:flutter/material.dart';

import 'widgets/bottom_nav_bar.dart';

class MenuScreen extends StatelessWidget {
  static const String routeName = "menu-screen";
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: [
              SearchField(),
              SizedBox(height: 10),
              _CategoriesAndProducts(),
            ],
          ),
        ),
        bottomNavigationBar: MainBottomNavBar(),
      ),
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
            TabBar(
              isScrollable: true,
              tabs: categories.map((c) => Tab(text: c.title)).toList(),
              labelColor: Colors.black87,
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
        crossAxisSpacing: 20,
      ),
      itemCount: category.relatedProducts.length,
      itemBuilder: (context, index) =>
          ProductWidget(product: category.relatedProducts[index]),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;
  final String imageUrl =
      "https://w7.pngwing.com/pngs/1007/189/png-transparent-grocery-store-supermarket-shopping-list-food-restaurant-supermarket-vegetables-natural-foods-service-retail-thumbnail.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(7)),
        border: Border.all(
          color: const Color.fromARGB(81, 76, 175, 79),
          width: 1.5,
        ),
      ),
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width /
                2.8, // Adjust the height as needed
            child: Stack(
              children: [
                Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          const Text(
            "\$39.5",
            style: TextStyle(
              color: Color.fromARGB(229, 76, 175, 79),
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            product.title,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
          const Text("Each"),
          const Divider(
            color: Color.fromARGB(81, 76, 175, 79),
            thickness: 2,
          ),
          const Text(
            "Add to Cart",
            style: TextStyle(
              color: Color.fromARGB(229, 76, 175, 79),
              fontSize: 17,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
