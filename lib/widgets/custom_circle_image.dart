import 'package:flutter/material.dart';
class CirclAvatar extends StatelessWidget {
  String image="";
  CirclAvatar({required this.image,super.key}){}

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image) ,
        ),
        CircleAvatar(radius: 5,backgroundColor: Colors.green,)
      ],
    );
  }
}
