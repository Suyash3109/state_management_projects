// import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:state_management_projects/models/product.dart';

class Shoppingcontroller extends GetxController {
  var products = [].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productresult = [
      Product(
        id: 1,
        price: 30,
        productDescription: "SOmething",
        productImage: 'abd',
        productName: '1st Product',
      ),
      Product(
        id: 2,
        price: 55,
        productDescription: "SOmething",
        productImage: 'abd',
        productName: '2nd  Product',
      ),
      Product(
        id: 3,
        price: 100,
        productDescription: "SOmething",
        productImage: 'abd',
        productName: '3rd Product',
      ),
      Product(
        id: 4,
        price: 1999,
        productDescription: "SOmething",
        productImage: 'abd',
        productName: '4th Product',
      ),
      Product(
        id: 5,
        price: 5630,
        productDescription: "SOmething",
        productImage: 'abd',
        productName: '5th Product',
      ),
      Product(
        id: 6,
        price: 530,
        productDescription: "SOmething",
        productImage: 'abd',
        productName: '6th Product',
      ),
    ];
    products.value = productresult;
  }
}
