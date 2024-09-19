import 'package:e_commerce_ui/core/utiles/app_colors.dart';
import 'package:e_commerce_ui/core/utiles/custom_button.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 100,
      child: Container(
        // color: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(
                //   width: 20,
                // ),
                Text(
                  "\$250",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
                CustomButton(title: "Add to Cart"),
                // SizedBox(
                //   width: 20,
                // ),
              ],
            ),
            //    CustomButton(title: "Check Out")
          ],
        ),
      ),
    );
  }
}
