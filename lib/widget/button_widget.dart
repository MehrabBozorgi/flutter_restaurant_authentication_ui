import 'package:flutter/material.dart';

class Button_Widget extends StatelessWidget {
  final String text;

  const Button_Widget({required this.text,});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 320, height: 45),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo[400],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'light',
              fontWeight: FontWeight.w900,
              letterSpacing: 1,),
        ),
      ),
    );
  }
}