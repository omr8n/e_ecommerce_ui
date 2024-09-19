import 'package:flutter/material.dart';

import '../../../../../core/utiles/app_text_styles.dart';
import '../../../../cart/presentaion/views/item_details_view.dart';

class CustomItemBestSaler extends StatelessWidget {
  const CustomItemBestSaler({
    super.key,
    required this.i,
  });

  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: const Text("-50%", style: TextStyles.bold14),
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
            child: const Text("Product tile", style: TextStyles.bold18),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 5),
            alignment: Alignment.centerLeft,
            child: const Text("write description for  product",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.regular14),
          ),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("\$ 55", style: TextStyles.bold14),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_checkout))
              ],
            ),
          )
        ],
      ),
    );
  }
}
