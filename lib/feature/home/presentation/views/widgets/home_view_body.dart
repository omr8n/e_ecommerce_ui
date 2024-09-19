import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_back_ground_container.dart';
import 'custom_categories.dart';
import 'custom_items.dart';
import 'home_view_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const HomeViewAppBar(),
        CustomBackGroundContainer(
          // height: MediaQuery.of(context).size.height * 0.7,

          child: Column(
            children: [
              Container(
                height: 50,
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 60,
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: "Search here"),
                      ),
                    ),

                    Expanded(
                      child: IconButton(
                          //   padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt,
                            color: Color(0xFF4c53A5),
                          )),
                    ),
                    // Icon(
                    //   Icons.camera_alt,
                    //   size: 27,
                    //   color: const Color.fromARGB(255, 65, 53, 143),
                    // )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4c53A5),
                  ),
                ),
              ),
              const CustomCategories(),
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: const Text(
                  "Beast Sealer",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4c53A5),
                  ),
                ),
              ),
              const CustomItems()
            ],
          ),
        )
      ],
    );
  }
}
