import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'LOGIN',
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: cPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Lottie.asset('assets/animations/login-animation.json'),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(
          height: defaultPadding * 2,
        )
      ],
    );
  }
}
