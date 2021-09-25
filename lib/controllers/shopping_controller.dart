// ignore: import_of_legacy_library_into_null_safe
import 'package:get/state_manager.dart';
import 'package:getx_example/models/product.dart';

class ShoppingController extends GetxController {
  // ignore: deprecated_member_use
  var products = <Product>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProduct'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'SecondProduct'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProduct'),
    ];

    products.value = productResult;
  }
}
