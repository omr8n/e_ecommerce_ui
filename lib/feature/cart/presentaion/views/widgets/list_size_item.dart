import 'package:flutter/material.dart';

import '../../../../../core/utiles/app_colors.dart';

class ListSizeItem extends StatelessWidget {
  const ListSizeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Size: ",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor),
        ),
        const SizedBox(
          width: 8,
        ),
        for (int i = 5; i <= 10; i++)
          Container(
            width: 30,
            height: 30,
            margin: const EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                // border: Border.all(color: AppColors.primaryColor),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      spreadRadius: 2,
                      blurRadius: 8)
                ]),
            child: Text(
              i.toString(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: AppColors.primaryColor),
            ),
          )
      ],
    );
  }
}
