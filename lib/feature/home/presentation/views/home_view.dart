import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeViewBody(),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.transparent,
        color: const Color(0xFF4c53A5),
        items: const <Widget>[
          Icon(
            CupertinoIcons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
