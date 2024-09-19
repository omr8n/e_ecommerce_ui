import 'package:flutter/material.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 5),
            height: 60,
            width: 300,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: "Search here"),
            ),
          ),

          Expanded(
            child: IconButton(
                //   padding: EdgeInsets.all(0),
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                  color: Color(0xFF4c53A5),
                )),
          ),
          // Icon(
          //   Icons.camera_alt,
          //   size: 27,
          //   color: const Color.fromARGB(255, 65, 53, 143),
          // )
        ],
      ),
    );
  }
}
