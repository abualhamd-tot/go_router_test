import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/data/product_model.dart';
import 'package:go_router_test/data/repos/products_repo.dart';

import '../app/config/app_router.dart';

class ProductsScreen extends StatelessWidget {
  final ProductsRepo productsRepo;

  const ProductsScreen({super.key, required this.productsRepo});

  @override
  Widget build(BuildContext context) {
    final products = productsRepo.getProducts();
    return Scaffold(
      body: Center(
        child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final ProductModel productModel = products[index];
              return GestureDetector(
                  onTap: () {
                    context.goNamed(
                      Routes.productdetailsRoute,
                      extra: productModel.toJson(),
                    );
                  },
                  child: Text(productModel.name));
            }),
      ),
    );
  }
}
