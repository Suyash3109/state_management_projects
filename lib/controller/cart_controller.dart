import 'package:get/get.dart';
import 'package:state_management_projects/models/product.dart';

class CartController extends GetxController {
  var cartItems = [].obs;

  addToCart(Product product) {
    cartItems.add(product);
  }
}
