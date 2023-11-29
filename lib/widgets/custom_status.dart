import 'package:flutter/material.dart';

import 'custom_circle_image.dart';

class Status extends StatelessWidget {
  dynamic image = "";
  String name = "";

  Status({required this.image, required this.name, super.key}) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, right: 0.12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          Text(name,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
