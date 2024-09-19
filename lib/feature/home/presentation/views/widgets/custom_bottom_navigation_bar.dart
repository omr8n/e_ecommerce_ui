import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
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
    );
  }
}
