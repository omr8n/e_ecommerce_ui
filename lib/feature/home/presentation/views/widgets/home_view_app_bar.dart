import 'package:e_commerce_ui/core/utiles/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utiles/app_text_styles.dart';
import '../../../../cart/presentaion/views/cart_view.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, CartView.routeName);
            },
            icon:
                const Icon(Icons.sort, size: 30, color: AppColors.primaryColor),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("Do Shop", style: TextStyles.bold23),
          ),
          const Spacer(),
          Badge(
            backgroundColor: Colors.redAccent,
            label: const Text("3"),
            padding: const EdgeInsets.all(3),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_rounded,
                  size: 35,
                  color: AppColors.primaryColor,
                )),
          ),
          // badges.Badge(
          //   position: badges.BadgePosition.topEnd(top: -10, end: -12),
          //   showBadge: true,
          //   ignorePointer: false,
          //   onTap: () {},
          //   badgeContent: Icon(Icons.check, color: Colors.white, size: 10),
          //   badgeAnimation: badges.BadgeAnimation.rotation(
          //     animationDuration: Duration(seconds: 1),
          //     colorChangeAnimationDuration: Duration(seconds: 1),
          //     loopAnimation: false,
          //     curve: Curves.fastOutSlowIn,
          //     colorChangeAnimationCurve: Curves.easeInCubic,
          //   ),
          //   badgeStyle: badges.BadgeStyle(
          //     shape: badges.BadgeShape.square,
          //     badgeColor: Colors.blue,
          //     padding: EdgeInsets.all(5),
          //     borderRadius: BorderRadius.circular(4),
          //     borderSide: BorderSide(color: Colors.white, width: 2),
          //     borderGradient: badges.BadgeGradient.linear(
          //         colors: [Colors.red, Colors.black]),
          //     badgeGradient: badges.BadgeGradient.linear(
          //       colors: [Colors.blue, Colors.yellow],
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //     ),
          //     elevation: 0,
          //   ),
          //   child: Text('Badge'),
          // ),
        ],
      ),
    );
  }
}
