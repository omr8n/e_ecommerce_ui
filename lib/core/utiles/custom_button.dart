import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgourndColor, this.textColor, required this.title});

  final Color? backgourndColor, textColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      height: 50,

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          maximumSize: const Size(200, 150),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgourndColor ?? const Color(0xFF4c53A5),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          // style: AppStyles.styleSemiBold18(context).copyWith(
          //   color: textColor,
          // ),
        ),
      ),
    );
  }
}
