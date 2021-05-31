import 'package:flutter/material.dart';
import 'package:flutter_breakfast_ui_login/widget/button_widget.dart';
import 'package:flutter_breakfast_ui_login/screen/signUp_screen.dart';
import 'package:flutter_breakfast_ui_login/widget/text_form_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.2,
              child: Image.asset(
                'login.png',
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 135),
                  width: double.infinity,
                  child: Text(
                    'FOOD LOGIN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'light',
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 45,
                    ),
                  ),
                ),
                TextForm_Widget(
                  text: 'Email',
                  icon: Icons.email_outlined,
                ),
                TextForm_Widget(
                  text: 'Password',
                  icon: Icons.lock_outline,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Forget Password ?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'light',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1),
                  ),
                ),
                Button_Widget(
                  text: 'Login',
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Create New Account',
                    style: TextStyle(
                        fontFamily: 'light',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1,
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
