import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialSignup extends StatelessWidget {
  const SocialSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: cPrimaryColorLight,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: cPrimaryColor,
                ),
              ),
            ),
            const SizedBox(
              width: defaultPadding * 2,
            ),
            Container(
              decoration: const BoxDecoration(
                color: cPrimaryColorLight,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  color: cPrimaryColor,
                ),
              ),
            ),
            const SizedBox(
              width: defaultPadding * 2,
            ),
            Container(
              decoration: const BoxDecoration(
                color: cPrimaryColorLight,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const FaIcon(
                  FontAwesomeIcons.apple,
                  color: cPrimaryColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
