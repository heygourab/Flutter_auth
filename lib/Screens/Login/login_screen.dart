import 'package:flutter/material.dart';
import 'package:flutter_auth/components/backgound.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Backgound(
        topImage: 'assets/images/main_top.png',
        bottomImage: 'assets/images/login_bottom.png',
        topImageLeftValue: 0,
        topImageTopValue: 0,
        bottomImageBottomValue: 0,
        bottomImageRightValue: 0,
        child: Column());
  }
}
