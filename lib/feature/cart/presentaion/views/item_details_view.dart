import 'package:e_commerce_ui/core/utiles/app_colors.dart';
import 'package:e_commerce_ui/feature/cart/presentaion/views/widgets/item_bottom_nav_bar.dart';
import 'package:e_commerce_ui/feature/cart/presentaion/views/widgets/item_details_view_body.dart';
import 'package:flutter/material.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});
  static String routeName = '/item-details';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightPrimaryColor,
      body: ItemDetailsViewBody(),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
