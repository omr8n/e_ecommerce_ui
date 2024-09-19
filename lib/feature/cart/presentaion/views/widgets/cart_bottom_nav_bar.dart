import 'package:e_commerce_ui/core/utiles/custom_button.dart';
import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 150,
      child: Container(
        //color: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4c53A5),
                  ),
                ),
                Text(
                  "\$250",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 76, 91),
                  ),
                ),
              ],
            ),
            CustomButton(title: "Check Out")
          ],
        ),
      ),
    );
  }
}
