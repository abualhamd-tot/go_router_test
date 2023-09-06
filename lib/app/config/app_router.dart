import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_test/data/product_model.dart';
import 'package:go_router_test/view/home_screen.dart';
import 'package:go_router_test/view/product_details.dart';
import 'package:go_router_test/view/products_Screen.dart';
import 'package:go_router_test/view/profile_screen.dart';

import '../../data/repos/products_repo.dart';
import '../../injection_container.dart';

final navigationKey = GlobalKey<NavigatorState>();

var currentContext = navigationKey.currentState?.context;

abstract class Routes {
  static const homeRoute = 'home';
  static const productsRoute = 'products';
  static const productdetailsRoute = 'product_details';
  static const profileRoute = 'profile';
}

final appRouter = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: navigationKey,
  routes: [
    GoRoute(
      path: '/',
      name: Routes.homeRoute,
      builder: (context, state) {
        return const HomeScreen();
      },
      routes: [
        GoRoute(
          path: "products",
          name: Routes.productsRoute,
          builder: (context, state) {
            return ProductsScreen(
              productsRepo: sl<ProductsRepo>(),
            );
          },
          routes: [
            GoRoute(
              path: "product_details",
              name: Routes.productdetailsRoute,
              builder: ((context, state) {
                final Map<String, dynamic> queryParams =
                    state.uri.queryParameters;
                final result = ProductModel.fromJson(queryParams);
                return ProductDetails(productModel: result);
              }),
            ),
          ],
        ),
        GoRoute(
          path: "profile",
          name: Routes.profileRoute,
          builder: (context, state) {
            return const ProfileScreen();
          },
        )
      ],
    ),
  ],
);
