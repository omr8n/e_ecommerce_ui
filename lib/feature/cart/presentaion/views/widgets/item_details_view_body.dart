import 'package:clippy_flutter/arc.dart';
import 'package:e_commerce_ui/core/utiles/app_colors.dart';
import 'package:e_commerce_ui/core/utiles/app_images.dart';
import 'package:e_commerce_ui/feature/cart/presentaion/views/widgets/custom_add_and_remove_item.dart';
import 'package:e_commerce_ui/feature/cart/presentaion/views/widgets/item_app_bar.dart';
import 'package:e_commerce_ui/feature/cart/presentaion/views/widgets/lisst_color_item.dart';

import 'package:flutter/material.dart';

import 'list_favorite.dart';
import 'list_size_item.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ItemAppBar(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            Assets.images2,
            height: 300,
          ),
        ),
        Arc(
          edge: Edge.TOP,
          arcType: ArcType.CONVEY,
          height: 30,
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 20),
                    child: Row(
                      children: [
                        Text(
                          "product title",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      children: [
                        ListFavorite(),
                        CustomAddAndRemoveItme(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "This is more detailed description about the product , you can add more details here ,this is leanthy description",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 16,

                        //fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ListSizeItem(),
                  LisstColorItem(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
