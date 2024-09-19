import 'package:e_commerce_ui/feature/cart/presentaion/views/widgets/cart_bottom_nav_bar.dart';
import 'package:e_commerce_ui/feature/cart/presentaion/views/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static String routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartViewBody(),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
