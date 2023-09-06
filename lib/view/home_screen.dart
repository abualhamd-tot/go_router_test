import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../app/config/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                context.goNamed(
                  Routes.productsRoute,
                );
              },
              child: const Text('Products'),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                context.goNamed(Routes.profileRoute);
              },
              child: const Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
