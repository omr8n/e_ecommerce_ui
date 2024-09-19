import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAddAndRemoveItme extends StatelessWidget {
  const CustomAddAndRemoveItme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    spreadRadius: 1,
                    blurRadius: 10)
              ]),
          child: const Icon(
            CupertinoIcons.add,
            size: 18,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: const Text(
            "01",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.5),
                    spreadRadius: 1,
                    blurRadius: 10)
              ]),
          child: const Icon(
            CupertinoIcons.minus,
            size: 18,
          ),
        ),
      ],
    );
  }
}
