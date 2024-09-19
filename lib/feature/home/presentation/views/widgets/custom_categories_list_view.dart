import 'package:flutter/material.dart';

import 'categoey_item.dart';

class CustomCategoriesListView extends StatelessWidget {
  const CustomCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i <= 7; i++) CategoryItem(i: i),
        ],
      ),
    );
  }
}
