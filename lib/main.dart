import 'package:e_commerce_ui/feature/cart/presentaion/views/item_details_view.dart';
import 'package:flutter/material.dart';

import 'feature/cart/presentaion/views/cart_view.dart';
import 'feature/home/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const HomeView(),
        CartView.routeName: (context) => const CartView(),
        ItemDetailsView.routeName: (context) => const ItemDetailsView(),
      },
    );
  }
}
