
import 'package:flutter/material.dart';

class TextForm_Widget extends StatelessWidget {
  final String text;
  final IconData icon;

  const TextForm_Widget({ required this.text, required this.icon}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15,left: 20,right: 20),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(icon),
          border: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(color: Colors.white,
            fontFamily: 'light',
            fontWeight: FontWeight.w900,
            letterSpacing: 1
          ),
        ),
      ),
    );
  }
}