import 'package:flutter/material.dart';

class TextFild extends StatelessWidget {
  const TextFild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 55,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          prefixIcon: Icon(Icons.search),
          hintText: 'search',
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
