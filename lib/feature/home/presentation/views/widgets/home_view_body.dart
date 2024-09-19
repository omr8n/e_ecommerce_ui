import 'package:e_commerce_ui/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utiles/app_text_styles.dart';
import '../../../../../core/widgets/custom_back_ground_container.dart';
import 'custom_categories_list_view.dart';
import 'custom_grid_view_items.dart';
import 'custom_search_text_filed.dart';
import 'home_view_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HomeViewAppBar(),
        CustomBackGroundContainer(
          // height: MediaQuery.of(context).size.height * 0.7,

          child: Column(
            children: [
              CustomSearchTextFiled(),
              CustomText(text: "Categories", style: TextStyles.bold25),
              CustomCategoriesListView(),
              CustomText(text: "Beast Sealer", style: TextStyles.bold25),
              CustomGridViewItems()
            ],
          ),
        )
      ],
    );
  }
}
