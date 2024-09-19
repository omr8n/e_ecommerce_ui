import 'package:e_commerce_ui/core/utiles/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.i,
  });

  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/$i.png",
            width: 50,
            height: 50,
          ),
          const Text(
            "Sandal",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: AppColors.primaryColor),
          )
        ],
      ),
    );
  }
}
