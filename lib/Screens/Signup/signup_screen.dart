import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/signup_image.dart';
import 'package:flutter_auth/Screens/Signup/components/sigup_form.dart';
import 'package:flutter_auth/Screens/Signup/components/social_signup.dart';
import 'package:flutter_auth/components/backgound.dart';
import 'package:flutter_auth/constants.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Backgound(
      topImage: 'assets/images/signup_top.png',
      bottomImage: 'assets/images/login_bottom.png',
      topImageTopValue: 0,
      topImageLeftValue: 0,
      bottomImageRightValue: 0,
      bottomImageBottomValue: 0,
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SignupImage(),
            SignUpForm(),
            OrDrivier(),
            SocialSignup(),
            SizedBox(
              height: defaultPadding * 2,
            )
          ],
        ),
      ),
    );
  }
}
