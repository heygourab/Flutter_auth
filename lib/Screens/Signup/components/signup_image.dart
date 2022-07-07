import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SignupImage extends StatelessWidget {
  const SignupImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SIGN UP',
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: cPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Container(
                child: Lottie.asset(
                  'assets/animations/signup-animation.json',
                ),
              ),
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
