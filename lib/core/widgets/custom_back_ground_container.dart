import 'package:flutter/material.dart';

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFEDECF2),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(35),
          right: Radius.circular(35),
        ),
      ),
      child: child,
    );
  }
}
