import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/loginsignup_btn.dart';
import 'package:flutter_auth/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width * 0.8,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: cPrimaryColorLight,
            borderRadius: BorderRadius.circular(25),
          ),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: cPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Your Email',
              icon: FaIcon(
                FontAwesomeIcons.at,
                color: cPrimaryColor,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Container(
          width: size.width * 0.8,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: cPrimaryColorLight,
            borderRadius: BorderRadius.circular(25),
          ),
          child: TextFormField(
            textInputAction: TextInputAction.done,
            cursorColor: cPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Your Password',
              icon: FaIcon(
                FontAwesomeIcons.lock,
                color: cPrimaryColor,
              ),
              suffixIcon: Icon(
                Icons.visibility_off,
                color: cPrimaryColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: defaultPadding),
        const LoginSignUpBtn(text: 'Login', routeWidget: LoginScreen()),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
