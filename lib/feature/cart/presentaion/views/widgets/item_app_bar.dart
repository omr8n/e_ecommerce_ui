import 'package:e_commerce_ui/core/utiles/app_colors.dart';
import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios,
                size: 30, color: Color(0xFF4c53A5)),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cart",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4c53A5),
              ),
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite,
                  size: 30, color: AppColors.primaryColor))
        ],
      ),
    );
  }
}
