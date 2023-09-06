import 'package:flutter/material.dart';
import 'package:go_router_test/data/product_model.dart';

const _textStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

class ProductDetails extends StatelessWidget {
  // final String name;
  // final String amount;
  final ProductModel productModel;

  const ProductDetails(
      {super.key,
      // required this.name,
      // required this.amount,
      required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "name: ${productModel.name}",
            style: _textStyle,
          ),
          const SizedBox(height: 30),
          Text(
            "amount: ${productModel.amount}",
            style: _textStyle,
          ),
        ],
      ),
    );
  }
}
