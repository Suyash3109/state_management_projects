// ignore_for_file: prefer_const_constructors

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_projects/constants.dart';
import 'package:state_management_projects/controller/Shopping_Controller.dart';
import 'package:state_management_projects/controller/cart_controller.dart';

class ShoppingPage extends StatelessWidget {
  ShoppingPage({super.key});

  final shoppingController = Get.put(Shoppingcontroller());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products Page",
            style: TextStyle(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
                wordSpacing: 5,
                letterSpacing: 10)),
        backgroundColor: primaryColor,
        elevation: 50,
        shadowColor: primaryColor,
        toolbarHeight: 80,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      backgroundColor: thirdColor,
      body: Column(
        children: [
          Expanded(
            child: GetX<Shoppingcontroller>(
                // stream: null,
                builder: (controller) {
              return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: primaryColor,
                      elevation: 10,
                      shadowColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      margin: const EdgeInsets.all(12),
                      child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${controller.products[index].productName}',
                                        style: TextStyle(
                                          color: secondaryColor,
                                          fontSize: 24,
                                        ),
                                      ),
                                      Text(
                                        '${controller.products[index].productDescription}',
                                        style: TextStyle(
                                          color: secondaryColor,
                                          // fontSize: 24,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$${controller.products[index].price}',
                                    style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 24,
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: secondaryColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    cartController
                                        .addToCart(controller.products[index]);
                                  },
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(color: primaryColor),
                                  ))
                            ],
                          )),
                    );
                  });
            }),
          ),
          Text(
            "Total Amount: ",
            style: TextStyle(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 5,
                wordSpacing: 8),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
