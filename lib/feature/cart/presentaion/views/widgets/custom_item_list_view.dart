import 'package:flutter/material.dart';

import 'cart_item.dart';

class CustomItemListView extends StatelessWidget {
  const CustomItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i <= 4; i++)
          CartItem(
            index: i,
          )
      ],
    );
  }
}
