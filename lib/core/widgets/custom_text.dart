import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.style,
  });
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
