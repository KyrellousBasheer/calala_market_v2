import 'package:calala_market/services/models/product.dart';

class Order {
  List<MapEntry<Product, int>> productsList = [];
  double totalCost = 0;

  int addProduct(Product product) {
    // Find the product in productsList
    int count = 0;
    int index = productsList.indexWhere((entry) => entry.key == product);
    if (index >= 0) {
      // If product exists, increase its count by 1
      count = productsList[index].value + 1;
      productsList[index] = MapEntry(productsList[index].key, count);
    } else {
      // If product doesn't exist, add a new entry with count as 1
      count = 1;
      productsList.add(MapEntry(product, count));
    }

    // Update totalCost
    totalCost += product.price;
    return count;
  }

  int removeProduct(Product product, {allEntries = false}) {
    // Find the product in productsList

    int index = productsList.indexWhere((entry) => entry.key == product);

    if (index < 0) return 0;
    var entry = productsList[index];
    int count = 0;
    if (allEntries || entry.value == 1) {
      productsList.removeAt(index);
      totalCost -= entry.value * product.price;
    } else if (entry.value > 1) {
      count = productsList[index].value - 1;
      productsList[index] = MapEntry(productsList[index].key, count);
      totalCost -= product.price;
    }
    return count;
  }

  int productCount(Product product) {
    var index = productsList.indexWhere((entry) => entry.key == product);
    if (index < 0) return 0;
    return productsList[index].value;
  }

  double calcTotalCoast() {
    double total = 0;
    for (var product in productsList) {
      total += product.value;
    }
    return total;
  }

  int get totalCount {
    int total = 0;
    for (var product in productsList) {
      total += product.value;
    }
    return total;
  }

  void cancel() {
    productsList.clear();
    totalCost = 0;
  }
}
