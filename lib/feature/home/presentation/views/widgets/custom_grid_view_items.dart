import 'package:flutter/material.dart';

import 'custom_item_best_saler.dart';

class CustomGridViewItems extends StatelessWidget {
  const CustomGridViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: .67,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [for (int i = 1; i <= 7; i++) CustomItemBestSaler(i: i)],
    );
  }
}
