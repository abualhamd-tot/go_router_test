import '../product_model.dart';

class ProductsRepo {
  List<ProductModel> getProducts() {
    return [
      ProductModel(name: 'first product', amount: 111.0),
      ProductModel(name: 'second product', amount: 222.0)
    ];
  }
}
