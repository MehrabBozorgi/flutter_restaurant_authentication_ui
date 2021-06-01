import 'package:flutter/material.dart';
import 'package:flutter_breakfast_ui_login/widget/button_widget.dart';
import 'package:flutter_breakfast_ui_login/widget/text_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                'signup.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person_outline_rounded,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 200),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.indigo[400],
                          child: Icon(
                            Icons.arrow_circle_up,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextForm_Widget(
                    text: 'User', icon: Icons.person_outline_rounded),
                TextForm_Widget(text: 'Email', icon: Icons.email_outlined),
                TextForm_Widget(text: 'Password', icon: Icons.lock_outline),
                TextForm_Widget(
                    text: 'Confirm Password', icon: Icons.lock_outline),
                SizedBox(
                  height: 30,
                ),
                Button_Widget(text: 'Register'),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have Account?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'light',
                      ),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.indigo[400],
                        fontSize: 16,
                        backgroundColor: Colors.black12,
                        letterSpacing: 1,
                        fontFamily: 'light',
                        fontWeight: FontWeight.w900,

                      ),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
