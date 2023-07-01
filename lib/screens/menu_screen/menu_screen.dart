import 'package:calala_market/screens/menu_screen/widgets/search_bar.dart';
import 'package:calala_market/services/dummy_data_generator.dart';
import 'package:calala_market/services/models/category.dart';
import 'package:flutter/material.dart';

import 'widgets/bottom_nav_bar.dart';

class MenuScreen extends StatelessWidget {
  static const String routeName = "menu-screen";
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          children: const [
            SearchField(),
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
            TabBar(
              isScrollable: true,
              tabs: categories.map((c) => Tab(text: c.title)).toList(),
              // labelColor: Colors.black87,
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

/// ## this view is to build the products screen for each category
class ProductsView extends StatelessWidget {
  final ProductCategory category;
  const ProductsView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: category.relatedProducts.length,
        itemBuilder: (context, index) => SizedBox(
          child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  // color: Colors.black,
                  width: 1.5,
                ),
              ),
              margin: const EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Text(category.relatedProducts[index].title)),
        ),
      ),
    );
  }
}
