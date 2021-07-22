import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/Auth/login_navigator.dart';
import 'package:supermarket/Components/custom_button.dart';
import 'package:supermarket/Components/entry_field.dart';
import 'package:supermarket/Theme/colors.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
          style: TextStyle(color: kMainTextColor),
        ),
        centerTitle: true,
      ),
      body: FadedSlideAnimation(
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(
              flex: 1,
            ),
            EntryField(
              label: "fullName",
              hint: "EnterFullName",
            ),
            EntryField(
              label: "emailAddress",
              hint: "EnterEmailAddress",
            ),
            EntryField(
              label: "SelectCountry",
              hint: "SelectCountry",
              suffixIcon: Icons.arrow_drop_down,
            ),
            EntryField(
              label: "phoneNumber",
              hint: "EnterPhoneNumber",
            ),
            Spacer(
              flex: 5,
            ),
            CustomButton(
              color: Colors.red,
              onTap: () =>
                  Navigator.pushNamed(context, SignInRoutes.verification),
            )
          ],
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
