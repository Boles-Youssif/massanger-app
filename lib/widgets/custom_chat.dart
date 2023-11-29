import 'package:flutter/material.dart';

class ChatField extends StatelessWidget {
  dynamic image = "";
  String name = "";
  String chatText = "";
  ChatField(
      {required this.image, required this.name, required this.chatText, super.key}) {}
  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(top: 8),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color:  Colors.black,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: image
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Text(chatText,
                style: TextStyle(color: const Color.fromARGB(255, 146, 144, 144)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
