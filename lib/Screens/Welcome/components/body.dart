import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/welcome_image.dart';
import 'package:flutter_auth/Screens/Welcome/components/loginsignup_btn.dart';
import 'package:flutter_auth/components/backgound.dart';
import 'package:flutter_auth/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Backgound(
        topImage: 'assets/images/main_top.png',
        bottomImage: 'assets/images/main_bottom.png',
        topImageTopValue: 0,
        topImageLeftValue: 0,
        bottomImageBottomValue: 0,
        bottomImageLeftValue: 0,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              WelcomeImage(),
              LoginSignUpBtn(text: 'Login', routeWidget: LoginScreen()),
              LoginSignUpBtn(
                text: 'Sign up',
                routeWidget: SignupScreen(),
                primaryColor: cPrimaryColorLight,
                onPrimaryColor: cPrimaryColor,
              ),
              SizedBox(
                height: defaultPadding * 2,
              )
            ],
          ),
        ));
  }
}
