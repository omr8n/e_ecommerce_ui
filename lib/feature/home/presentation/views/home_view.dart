import 'package:flutter/material.dart';

import 'widgets/custom_bottom_navigation_bar.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: HomeViewBody(), bottomNavigationBar: CustomBottomNavigationBar());
  }
}
