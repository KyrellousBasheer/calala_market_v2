import 'package:calala_market/services/models/order.dart';
import 'package:calala_market/services/models/product.dart';
import 'package:flutter/foundation.dart';

class OrderChangesProvider extends ChangeNotifier {
  Order activeOrder = Order();

  int addProduct(Product product) {
    var count = activeOrder.addProduct(product);
    notifyListeners();
    return count;
  }

  int removeProduct(Product product, {allEntries = false}) {
    var count = activeOrder.removeProduct(product, allEntries: allEntries);
    notifyListeners();
    return count;
  }

  int productCount(Product product) => activeOrder.productCount(product);
  int get totalCount => activeOrder.totalCount;
  double get totalCost => activeOrder.totalCost;
}
