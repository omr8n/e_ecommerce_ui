import 'package:e_commerce_ui/feature/cart/presentaion/views/item_details_view.dart';
import 'package:flutter/material.dart';

class CustomItems extends StatelessWidget {
  const CustomItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: .67,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i <= 7; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color(0xFF4c53A5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "-50%",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ItemDetailsView.routeName);
                  },
                  child: Container(
                    // height: 150,
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/$i.png",
                      // height: 22,
                      height: 110,
                      width: 120,
                    ),
                    // decoration: const BoxDecoration(
                    //   image: DecorationImage(
                    //       image: AssetImage(Assets.images1), fit: BoxFit.fill),
                    // ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: const Text("Product tile",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4c53A5),
                      )),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: const Text("write description for  product",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4c53A5),
                      )),
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "\$ 55",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4c53A5),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart_checkout))
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
