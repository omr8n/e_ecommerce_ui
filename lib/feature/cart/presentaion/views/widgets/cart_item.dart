import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_add_and_remove_item.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Radio(
            value: "",
            groupValue: "",
            onChanged: (value) {},
          ),
          SizedBox(
            width: 70,
            height: 70,
            child: Image.asset("assets/images/$index.png"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "product title",
                  style: TextStyle(
                    fontSize: 16,
                    //fontWeight: FontWeight.bold,
                    color: Color(0xFF4c53A5),
                  ),
                ),
                Text(
                  "\$55",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4c53A5),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
                const CustomAddAndRemoveItme()
              ],
            ),
          )
        ],
      ),
    );
  }
}
