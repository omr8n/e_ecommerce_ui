import 'package:e_commerce_ui/core/widgets/custom_back_ground_container.dart';
import 'package:e_commerce_ui/feature/cart/presentaion/views/widgets/cart_app_bar.dart';

import 'package:flutter/material.dart';

import 'custom_item_list_view.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CartAppBar(),
        const CustomBackGroundContainer(
          child: CustomItemListView(),
        ),
        Row(
          children: [
            Container(
              // padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                color: const Color(0xFF4c53A5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            const Text(
              "Add coupon code",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4c53A5),
              ),
            ),
          ],
        )
      ],
    );
  }
}
