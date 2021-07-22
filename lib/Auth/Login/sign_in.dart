import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/Auth/login_navigator.dart';
import 'package:supermarket/Components/custom_button.dart';
import 'package:supermarket/Components/entry_field.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadedSlideAnimation(
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0, left: 0, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome to Supermarket",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Image.asset(
                  "assets/userrlogo.png",
                  scale: 2.5,
                  height: 150,
                ),
                Text(
                  "SuperMarket",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                EntryField(
                  label: "Email/Mobile",
                  hint: "Enter email/mobile no.",
                ),
                EntryField(
                  label: "Password",
                  hint: "Password",
                ),
                CustomButton(
                  color: Colors.red,
                  onTap: () =>
                      Navigator.pushNamed(context, SignInRoutes.verification),
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SignInRoutes.signUp);
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }

  Expanded buildFBGoogleButton(BuildContext context, String text, Color color) {
    return Expanded(
        child: FlatButton(
            color: color,
            onPressed: () => Navigator.pushNamed(context, SignInRoutes.signUp),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(text,
                  style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  )),
            )));
  }
}
