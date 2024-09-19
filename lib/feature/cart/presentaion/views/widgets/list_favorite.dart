import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/utiles/app_colors.dart';

class ListFavorite extends StatelessWidget {
  const ListFavorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 4,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 20,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) =>
          const Icon(Icons.favorite, color: AppColors.primaryColor),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
