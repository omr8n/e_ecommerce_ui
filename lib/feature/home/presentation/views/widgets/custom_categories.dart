import 'package:flutter/material.dart';

class CustomCategories extends StatelessWidget {
  const CustomCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i <= 7; i++)
            Container(
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
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4c53A5),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
